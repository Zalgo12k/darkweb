RegisterServerEvent("z12-darkweb:buy")
AddEventHandler("z12-darkweb:buy", function(data)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)    
    local price = tonumber(data.Price) * data.Count
    print(price)
    if xPlayer.getMoney() >= price  then
        xPlayer.removeMoney(price)
    xPlayer.addInventoryItem(data.Item, data.Count)
    TriggerClientEvent("z12-darkweb:enough",src)
    else
    TriggerClientEvent("z12-darkweb:notenough",src)        
    end
end)