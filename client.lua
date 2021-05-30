RegisterNUICallback("DarkwebList", function(data, cb)
    cb(Config.Darkweb.List)
end)

RegisterNUICallback("DarkwebOrder", function(data, cb)
TriggerServerEvent("z12-darkweb:buy", data)
end)


RegisterNetEvent('z12-darkweb:notenough')
AddEventHandler('z12-darkweb:notenough', function(data)
SendNUIMessage({
    action = "PhoneNotification",
    PhoneNotify = {
        title = Lang("DARKWEB_TITLE"),
        text = Lang("DARKWEB_NOTSUCCES"),
        icon = "fas fa-skull-crossbones",
        color = "#27ae60",
        timeout = 1500,
    },
})
end)


RegisterNetEvent('z12-darkweb:enough')
AddEventHandler('z12-darkweb:enough', function(data)
SendNUIMessage({
    action = "PhoneNotification",
    PhoneNotify = {
        title = Lang("DARKWEB_TITLE"),
        text = Lang("DARKWEB_SUCCES"),
        icon = "fas fa-skull-crossbones",
        color = "#27ae60",
        timeout = 1500,
    },
})
TriggerServerEvent('qb-phone:server:sendNewMail', {
    sender = "Ustun Darkweb",
    subject = "Üşendim.",
    message = " Teslimatınız Blah Blah Valla üşendim isterseniz mailli yaparsınız??? ".."Ustun Darkweb.".."<br><br>",
    button = {
        enabled = true,
        buttonEvent = "",
        buttonData = waitingDelivery
    }
})
end)