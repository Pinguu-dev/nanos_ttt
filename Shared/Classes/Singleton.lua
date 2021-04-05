Singleton = {}

function Singleton:GetSingleton(...)
    if not self.ms_Instance then
        self.ms_Instance = self:New(...)
    end
    return self.ms_Instance
end

function Singleton:New(...)
    self.New = function() end
    local inst = new(self, ...)
    self.ms_Instance = inst
    return inst
end

function Singleton:IsInstantiated()
    return self.ms_Instance ~= nil
end

function Singleton:virtual_destructor()
    for k, v in pairs(super(self)) do
        v.ms_Instance = nil
        v.New = Singleton.New
    end
end