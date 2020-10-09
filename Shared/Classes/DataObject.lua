DataObject = inherit(Object)

function DataObject:virtual_constructor()
    Package:Log("Init data")
    self.m_Data = {}
end

function DataObject:SetData(key, value)
    Package:Log("SetData " .. tostring(key) .. " - " .. tostring(value))
    self.m_Data[key] = value
end

function DataObject:GetData(key)
    Package:Log("GetData " .. tostring(key))
    return self.m_Data[key]
end
