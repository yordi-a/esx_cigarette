ESX  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('cigarette', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local smoke = xPlayer.getInventoryItem('cigarette')
    local lighter = xPlayer.getInventoryItem('lighter').count

    if lighter > 0 then
    xPlayer.removeInventoryItem('cigarette', 1)
    TriggerClientEvent('esx_cigarette:startSmoke', source)
else
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Çakmağın yok!' })
  end
end)