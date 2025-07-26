local spawnedProps = {}

-- Function to load props at defined locations
local function loadProps()
    for _, location in pairs(Config.CraftingLocations) do
        if location.skip then
            goto continue
        end
        local propHash = GetHashKey(location.prop)
        RequestModel(propHash)
        while not HasModelLoaded(propHash) do
            Wait(1)
        end
        local prop = CreateObject(propHash, location.coords.x, location.coords.y, location.coords.z - 1.0, false, true, true)
        SetEntityHeading(prop, location.heading or 0.0) -- Set the prop's heading from config or default to 0.0
        FreezeEntityPosition(prop, true) -- Freeze the prop in place
        SetModelAsNoLongerNeeded(propHash)
        table.insert(spawnedProps, prop) -- Track spawned props
        ::continue::
    end
end

-- Function to clean up props when the script stops
local function deleteProps()
    for _, prop in ipairs(spawnedProps) do
        if DoesEntityExist(prop) then
            DeleteEntity(prop)
        end
    end
    spawnedProps = {}
end

-- Load props when the resource starts
CreateThread(function()
    loadProps()
end)

-- Clean up props when the resource stops
AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then
        return
    end
    deleteProps()
end)
