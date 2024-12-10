-- Register the event to spawn peds
RegisterNetEvent("spawnPeds:load")
AddEventHandler("spawnPeds:load", function(pedList)
    -- Loop through the list of peds and spawn each one
    for _, pedData in pairs(pedList) do
        -- Call the spawnPed function with the model, coordinates, and heading
        SpawnPed(pedData.model, pedData.coords, pedData.heading)
    end
end)
