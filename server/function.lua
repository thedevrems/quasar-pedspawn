-- A function that triggers a client-side event, allowing the creation of peds to be initiated locally for the player concerned. 
function SpawnPedForThisPlayer(playerId)
    TriggerClientEvent("spawnPeds:load", playerId, Config.Ped)
end