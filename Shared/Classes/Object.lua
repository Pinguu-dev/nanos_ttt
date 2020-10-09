Object = {}

function Object:New(...)
	return new(self, ...)
end

function Object:Delete(...)
	return delete(self, ...)
end

function Object:Load(...)
	return load(self, ...)
end
