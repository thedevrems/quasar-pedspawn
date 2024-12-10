-- Event handler for when a resource starts
AddEventHandler('onResourceStart', function(resourceName)
    -- Check if the resource that started is the current script (this resource)
    if resourceName == GetCurrentResourceName() then
        -- Wait for 1000 milliseconds (1 second) to ensure other resources are loaded
        Wait(1000)
        
        -- Call the SpawnAllPed function to spawn all peds after waiting
        SpawnAllPed()
    end
end)
