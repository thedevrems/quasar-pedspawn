-- Function to spawn a ped at a specific location with a given heading
function SpawnPed(model, coords)
    -- Create the ped with the given model, coordinates, and heading
    -- '4' is a flag that specifies the ped type, GetHashKey() converts the model name to a hash key.
    -- coords.x, coords.y, coords.z represent the ped's position, and coords.w represents the heading (orientation)
    CreatePed(4, GetHashKey(model), coords.x, coords.y, coords.z, coords.w, false, false)
end

-- Function to spawn all peds based on data from Config.Ped
function SpawnAllPed()
    -- Loop through each ped data in the Config.Ped list
    for _, pedData in pairs(Config.Ped) do
        -- Call the SpawnPed function with the model, coordinates, and heading
        -- This will spawn a ped at the specified coordinates with the corresponding heading
        SpawnPed(pedData.model, pedData.coords)
    end
end
