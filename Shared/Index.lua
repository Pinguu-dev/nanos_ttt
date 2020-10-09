local files = {
    "Utils.lua",
    "Inspect.lua",
    "Classlib.lua",
    "Classes/Object.lua",
    "Classes/DataObject.lua"
}

DEBUG = true

for _, file in ipairs(files) do
    Package:Require(file)
end
