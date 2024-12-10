-- Function to load a model before spawning a ped
function LoadModel(model)
    -- Check if the model is valid and exists in the game files
    if not IsModelInCdimage(model) or not IsModelValid(model) then
        print("Invalid model: " .. model)  -- Print an error message if the model is not valid
        return false  -- Return false if the model is invalid
    end

    -- Request the model to be loaded
    RequestModel(model)
    -- Wait until the model is fully loaded
    while not HasModelLoaded(model) do
        Wait(0)  -- Yield to the game loop to prevent freezing
    end
    return true  -- Return true when the model is successfully loaded
end

-- Function to spawn a ped at a specific location with a given heading
function SpawnPed(model, coords, heading)
    -- Load the model if it's not already loaded
    if LoadModel(model) then
        -- Create the ped with the given model, coordinates, and heading
        local ped = CreatePed(4, GetHashKey(model), coords.x, coords.y, coords.z, heading, false, false)
        -- Set the ped as a mission entity (prevents it from being removed)
        SetEntityAsMissionEntity(ped, true, true)
        -- Block non-temporary events for the ped (it won't react to anything)
        SetBlockingOfNonTemporaryEvents(ped, true)
        -- Freeze the ped in place (it won't move)
        FreezeEntityPosition(ped, true)
    end
end