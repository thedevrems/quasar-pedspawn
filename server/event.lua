AddEventHandler('onResourceStart', function(resourceName)
    -- Check if the resource that started is the current script
    if resourceName == GetCurrentResourceName() then
        -- Loop through all players currently connected to the server
        for _, playerId in pairs(GetPlayers()) do
            -- Convert the player ID to a number (in case it's a string)
            local convPlayerId = tonumber(playerId)

            -- Call the function to spawn a ped for this player
            SpawnPedForThisPlayer(convPlayerId)
        end
    end
end)


-- Server-side event, to detect if a player is connecting
RegisterNetEvent("spawnPedsOnConnect")
AddEventHandler("spawnPedsOnConnect", function()
    local src = source
    TriggerClientEvent("spawnPeds:load", src, Config.Ped)
end)

-- Server-side event, to detect if a player is connecting
AddEventHandler("playerJoining", function()
    local player = source
    TriggerEvent("spawnPedsOnConnect", player)
end)

-- A function that triggers a client-side event, allowing the creation of peds to be initiated locally for the player concerned. 
function SpawnPedForThisPlayer(playerId)
    TriggerClientEvent("spawnPeds:load", playerId, Config.Ped)
end