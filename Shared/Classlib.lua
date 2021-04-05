local SERVER = Server ~= nil
local CLIENT = not SERVER
local DEBUG = DEBUG or false

local classes = {
	"Player",
	"Vehicle",
	"Character",
	"Weapon"
}

function enew(element, class, ...)
	-- DEBUG: Validate that we are not instantiating a class with pure virtual methods
	if DEBUG then
		for k, v in pairs(class) do
			assert(v ~= pure_virtual, "Attempted to instanciate a class with an unimplemented pure virtual method ("..tostring(k)..")")
		end
	end

	local instance = setmetatable( { element = element },
    {
        __index = class;
        __super = { class };
        __newindex = class.__newindex;
        __call = class.__call;
        __len = class.__len;
        __unm = class.__unm;
        __add = class.__add;
        __sub = class.__sub;
        __mul = class.__mul;
        __div = class.__div;
        __pow = class.__pow;
        __concat = class.__concat;
    })

	oop.elementInfo[element] = instance

	for k, v in ripairs(superAll(instance)) do
		if rawget(v, "virtual_constructor") then
			rawget(v, "virtual_constructor")(element, ...)
		end
    end

	-- Call constructor
	if rawget(class, "constructor") then
		rawget(class, "constructor")(element, ...)
	end
	element.constructor = false

	-- Add the destruction handler
    if rawget(class, "Subscribe") then
        self:Subscribe("Destroy", __removeElementIndex)
	end

	return element
end

function new(class, ...)
	assert(type(class) == "table", "first argument provided to new is not a table")

	-- DEBUG: Validate that we are not instantiating a class with pure virtual methods
	if DEBUG then
		for k, v in pairs(class) do
			assert(v ~= pure_virtual, "Attempted to instanciate a class with an unimplemented pure virtual method ("..tostring(k)..")")
		end
	end

	local instance = setmetatable( { },
		{
			__index = class;
			__super = { class };
			__newindex = class.__newindex;
			__call = class.__call;
			__len = class.__len;
			__unm = class.__unm;
			__add = class.__add;
			__sub = class.__sub;
			__mul = class.__mul;
			__div = class.__div;
			__pow = class.__pow;
			__concat = class.__concat;
		})

	-- Call derived constructors
	for k, v in ripairs(superAll(instance)) do
		if rawget(v, "virtual_constructor") then
			rawget(v, "virtual_constructor")(instance, ...)
		end
	end

	-- Call constructor
	if rawget(class, "constructor") then
		rawget(class, "constructor")(instance, ...)
	end
	instance.constructor = false

	return instance
end

function delete(self, ...)
	if not self then error("Called delete without object") end
	if self.destructor then --if rawget(self, "destructor") then
		self:destructor(...)
	end

	-- Prevent the destructor to be called twice
	self.destructor = false

	local callDerivedDestructor;
	callDerivedDestructor = function(parentClasses, instance, ...)
		for k, v in pairs(parentClasses) do
			if rawget(v, "virtual_destructor") then
				rawget(v, "virtual_destructor")(instance, ...)
			end
			local s = super(v)
			if s then callDerivedDestructor(s, instance, ...) end
		end
	end
	callDerivedDestructor(super(self), self, ...)
end

function super(self)
	if type(self) == "userdata" then
		--assert(oop.elementInfo[self], ("Cannot get the superclass of this element\n%s"):format(debug.traceback()))
		--self = oop.elementInfo[self]
		if not oop.elementInfo[self] then
			return {}
		end
		self = oop.elementInfo[self]
	end

	local metatable = getmetatable(self)
	if metatable then return metatable.__super
	else
		return {}
	end
end

function superAll(self)
	local supers = {}
	local s = superMultiple(self)

	if s then
		for _, v in ipairs(s) do
			table.insert(supers, v)
		end

		for _, v in ipairs(s) do
			local hS = superAll(v)

			for _, v2 in ipairs(hS) do
				table.insert(supers, v2)
			end
		end
	end

	return supers
end

function superMultiple(self)
    --[[ TODO: fix
	if isElement(self) then
		assert(oop.elementInfo[self], "Cannot get the superclass of this element") -- at least: not yet
		self = oop.elementInfo[self]
    end
    ]]

	local metatable = getmetatable(self)
	if not metatable then
		return {}
	end

	if metatable.__class then -- we're dealing with a class object
		return superMultiple(metatable.__class)
	end

	if metatable.__super then -- we're dealing with a class
		return metatable.__super or {}
	end
end

function inherit(from, what)
	assert(from, "Attempt to inherit a nil table value")
	if not what then
		local classt = setmetatable({}, { __index = _inheritIndex, __super = { from } })
		if from.onInherit then
			from.onInherit(classt)
		end
		return classt
	end

	local metatable = getmetatable(what) or {}
	local oldsuper = metatable and metatable.__super or {}
	table.insert(oldsuper, 1, from)
	metatable.__super = oldsuper
	metatable.__index = _inheritIndex

	-- Inherit __call
	for k, v in ipairs(metatable.__super) do
		if v.__call then
			metatable.__call = v.__call
			break
		end
	end

	return setmetatable(what, metatable)
end

function _inheritIndex(self, key)
	for k, v in pairs(super(self) or {}) do
		if v[key] then return v[key] end
	end
	return nil
end

function __removeElementIndex(actor)
	-- Call destructor
	delete(actor)

	-- Make sure element is not referenced in the classlib
	-- in theory, the GC weak mode invokes deletion,
	-- but since we probably have remaining references somewhere
	-- in the script, it's not deleted (which is easier to track down though)
	oop.elementInfo[actor] = nil
end

function instanceof(self, class, direct)
	if not self or not class then outputDebug(debug.traceback()) end
	assert(self, "Attempt to call instanceof on an invalid object")
	assert(class, "Attempt to call instanceof on an invalid class")
	assert(super(self), "Attempt to call instanceof on an object without superclass")
	for k, v in pairs(super(self)) do
		if v == class then return true end
	end

	if direct then return false end

	local check = false
	-- Check if any of 'self's base classes is inheriting from 'class'
	for k, v in pairs(super(self)) do
		check = instanceof(v, class, false)
	end
	return check
end

function pure_virtual()
    Package:Log(debug.traceback())
	error("Function implementation missing")
end

function bind(func, ...)
	if not func then
		if DEBUG then
            Package:Log(debug.traceback())
        end
		error("Bad function pointer @ bind. See console for more details")
	end

	local boundParams = {...}
	return
		function(...)
			local params = {}
			local boundParamSize = select("#", table.unpack(boundParams))
			for i = 1, boundParamSize do
				params[i] = boundParams[i]
			end

			local funcParams = {...}
			for i = 1, select("#", ...) do
				params[boundParamSize + i] = funcParams[i]
			end

            local retValue = func(table.unpack(params))

			return retValue
		end
end

function load(class, ...)
	assert(type(class) == "table", "first argument provided to load is not a table")
	local instance = setmetatable( { },
		{
			__index = class;
			__super = { class };
			__newindex = class.__newindex;
			__call = class.__call;
		})

	-- Call load
	if rawget(class, "load") then
		rawget(class, "load")(instance, ...)
	end
	instance.load = false

	return instance
end

-- Magic to allow MTA elements to be used as data storage
-- e.g. localPlayer.foo = 12
oop = {}
oop.elementInfo = setmetatable({}, { __mode = "k" })
oop.elementParent = setmetatable({}, { __mode = "k" })
oop.elementClasses = {}

oop.prepareClass = function(index)
	--Package:Log("prepareClass, index =  " .. tostring(index) .. ", class = " .. tostring(class))
	local mt = debug.getregistry().classes[index]

	local __nanos_index = mt.__index
	local __nanos_newindex = mt.__newindex
	local __set = mt.__set
	local __name = mt.__name

	__index = function(self, key)
		return function(self, ...)
			return __nanos_index(self.element, key)(self.element, ...)
		end
	end

	__newindex = function(self, key, value)
		__nanos_newindex(self.element, key, value)
	end

	mt.__index = function(self, key)
		if key == "parent" then
			oop.handled = false
			local parent = oop.elementParent[self]

			if not parent then
				parent = setmetatable({element = self}, {__index = __index})
				oop.elementParent[self] = parent
			end

			return parent
		end

		if not oop.handled then
			if not oop.elementInfo[self] then
				enew(self, oop.elementClasses[__name] or {})
			end
			if oop.elementInfo[self][key] ~= nil  then
				oop.handled = false
				return oop.elementInfo[self][key]
			end
			oop.handled = true
		end

		local value = __nanos_index(self, key)
		oop.handled = false
		return value
	end


	mt.__newindex = function(self, key, value)
		if __set[key] ~= nil then
			__nanos_newindex(self, key, value)
			return
		end

		if not oop.elementInfo[self] then
			enew(self, oop.elementClasses[__name] or {})
		end

		oop.elementInfo[self][key] = value
	end
end

function registerElementClass(name, class)
	assert(type(name) == "string", "Bad argument #1 for registerElementClass")
	assert(type(class) == "table", "Bad argument #2 for registerElementClass")
	oop.elementClasses[name] = class
end

oop.initClasses = function()
	for index, class in pairs(debug.getregistry().classes) do
		for k, v in pairs(classes) do
			if v == class.__name then
				oop.prepareClass(index)
			end
		end
	end
end
oop.initClasses()
