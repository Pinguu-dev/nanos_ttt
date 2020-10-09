function ripairs(t)
	local max = 1
	while t[max] ~= nil do
		max = max + 1
	end
	local function ripairs_it(t, i)
		i = i-1
		local v = t[i]
		if v ~= nil then
			return i,v
		else
			return nil
		end
	end
	return ripairs_it, t, max
end

function split(str, pat)
	local t = {}  -- NOTE: use {n = 0} in Lua-5.0
	local fpat = "(.-)" .. pat
	local last_end = 1
	local s, e, cap = str:find(fpat, 1)
	while s do
	   if s ~= 1 or cap ~= "" then
		  table.insert(t, cap)
	   end
	   last_end = e+1
	   s, e, cap = str:find(fpat, last_end)
	end
	if last_end <= #str then
	   cap = str:sub(last_end)
	   table.insert(t, cap)
	end
	return t
 end

 function table.find(tab, value)
	 for k, v in pairs(tab) do
		 if v == value then
			 return k
		 end
	 end
	 return nil
 end
 
 function table.removevalue(tab, value)
	local idx = table.find(tab, value)
	if idx then
		table.remove(tab, idx)
		return true
	end
end
