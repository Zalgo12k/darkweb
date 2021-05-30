
Config.Languages = {

        ["DARKWEB_TITLE"] = "Darkweb",
        ["DARKWEB_SUCCES"] = "Sipariş Verildi",
        ["DARKWEB_NOTSUCCES"] = "Paran Yetersiz",
    },
	
}

Config.Darkweb = {
    List = {    
        [1] = { item = 'WEAPON_APPISTOL', label = 'AP Pistol', price = 35000},
        [2] = { item = 'weapon_machinepistol', label = 'Machine Pistol', price = 33500},
        [3] = { item = 'weapon_snspistol', label = 'Baretta M9', price = 27500},
        [4] = { item = 'weapon_microsmg', label = 'Mac-10', price = 44000},

    },
    DeliveryImage = 'https://media.discordapp.net/attachments/808631350105341982/833545626942963742/unknown.png',
    DeliveryCoords = vector3(-313.64, -2781.0, 5.00032),
    DeliveryTime = 18000, -- seconds
    UsageTime = 180, -- seconds
}


Config.PhoneApplications = {
    ["darkweb"] = {
        app = "darkweb",
        color = "#004682",
        icon = "fas fa-ad",
        tooltipText = "Da",
        job = false,
        blockedjobs = {},
        slot = 18,
        Alerts = 0,
    },  
}