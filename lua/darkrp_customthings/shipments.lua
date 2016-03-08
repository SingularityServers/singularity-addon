--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
-- Pistols --
DarkRP.createShipment("Desert eagle", {
	model = "models/weapons/w_pist_deagle.mdl",
	entity = "weapon_mad_deagle",
	price = 2550,
	amount = 10,
	seperate = true,
	pricesep = 660,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("FN Five-seveN", {
	model = "models/weapons/w_pist_fiveseven.mdl",
	entity = "weapon_mad_57",
	price = 3750,
	amount = 10,
	seperate = true,
	pricesep = 700,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("Glock", {
	model = "models/weapons/w_pist_glock18.mdl",
	entity = "weapon_mad_glock",
	price = 1500,
	amount = 10,
	seperate = true,
	pricesep = 400,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("P228", {
	model = "models/weapons/w_pist_p228.mdl",
	entity = "weapon_mad_p228",
	price = 1950,
	amount = 10,
	seperate = true,
	pricesep = 510,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Pistols",
})

-- Rifles --

DarkRP.createShipment("AK47", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "weapon_mad_ak47",
	price = 6000,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Rifles",
})

DarkRP.createShipment("SG552 commando", {
	model = "models/weapons/w_rif_sg552.mdl",
	entity = "weapon_mad_sg552",
	price = 6900,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Rifles",
})

DarkRP.createShipment("Famas", {
	model = "models/weapons/w_rif_famas.mdl",
	entity = "weapon_mad_famas",
	price = 5400,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Rifles",
})

DarkRP.createShipment("AUG", {
	model = "models/weapons/w_rif_aug.mdl",
	entity = "weapon_mad_aug",
	price = 7500,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Rifles",
})

DarkRP.createShipment("M4", {
	model = "models/weapons/w_rif_m4a1.mdl",
	entity = "weapon_mad_m4",
	price = 6450,
	amount = 10,
	seperate = true,
	pricesep = 1200,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Rifles",
})

-- Sub Machine Guns --

DarkRP.createShipment("MP5A5", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "weapon_mad_mp5",
	price = 4800,
	amount = 10,
	seperate = false,
	pricesep = 600,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Sub Machine Guns",
})

DarkRP.createShipment("TMP", {
	model = "models/weapons/w_smg_tmp.mdl",
	entity = "weapon_mad_tmp",
	price = 4000,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Sub Machine Guns",
})

DarkRP.createShipment("UMP", {
	model = "models/weapons/w_smg_ump45.mdl",
	entity = "weapon_mad_ump",
	price = 5100,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Sub Machine Guns",
})

DarkRP.createShipment("P90", {
	model = "models/weapons/w_smg_p90.mdl",
	entity = "weapon_mad_p90",
	price = 5850,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Sub Machine Guns",
})

DarkRP.createShipment("MAC10", {
	model = "models/weapons/w_smg_mac10.mdl",
	entity = "weapon_mad_mac10",
	price = 4500,
	amount = 10,
	seperate = false,
	pricesep = 320,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Sub Machine Guns",
})

-- Shotguns --

DarkRP.createShipment("XM1014", {
	model = "models/weapons/w_shot_xm1014.mdl",
	entity = "weapon_mad_xm1014",
	price = 6000,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Shotguns",
})

DarkRP.createShipment("M3 Super 90", {
	model = "models/weapons/w_shot_m3super90.mdl",
	entity = "weapon_mad_m3",
	price = 3250,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Shotguns",
})

DarkRP.createShipment("Spas-12", {
	model = "models/weapons/w_shotgun.mdl",
	entity = "weapon_mad_spas",
	price = 4800,
	amount = 10,
	seperate = true,
	pricesep = 900,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Shotguns",
})

-- Snipers --

DarkRP.createShipment("Silenced Sniper Rifle", {
	model = "models/weapons/w_snip_g3sg1.mdl",
	entity = "weapon_mad_sg3",
	price = 7500,
	amount = 10,
	seperate = false,
	pricesep = 500,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Snipers",
})

DarkRP.createShipment("Crossbow", {
	model = "models/weapons/w_crossbow.mdl",
	entity = "weapon_mad_crossbow",
	price = 7000,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Snipers",
})

DarkRP.createShipment("SG550 commando", {
	model = "models/weapons/w_snip_awp.mdl",
	entity = "weapon_mad_awp",
	price = 6000,
	amount = 10,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Snipers",
})

DarkRP.createShipment("Scout", {
	model = "models/weapons/w_snip_scout.mdl",
	entity = "weapon_mad_scout",
	price = 4500,
	amount = 10,
	seperate = true,
	pricesep = 900,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Snipers",
})

-- Machine Guns --

DarkRP.createShipment("M249 SAW", {
	model = "models/weapons/w_mach_m249para.mdl",
	entity = "weapon_mad_m249",
	price = 8250,
	amount = 5,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Machine Guns",
})

-- Explosives --

DarkRP.createShipment("Fragmentation Grenade", {
	model = "models/weapons/w_eq_fraggrenade.mdl",
	entity = "weapon_mad_grenade",
	price = 750,
	amount = 1,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_IADEALER},
})

DarkRP.createShipment("Incendiary Grenade", {
	model = "models/weapons/w_eq_smokegrenade.mdl",
	entity = "weapon_mad_incendiary",
	price = 450,
	amount = 1,
	seperate = false,
	pricesep = 300,
	noship = false,
	allowed = {TEAM_IADEALER},
})

DarkRP.createShipment("Explosive Charge x2", {
	model = "models/weapons/w_slam.mdl",
	entity = "weapon_mad_charge",
	price = 5000,
	amount = 1,
	seperate = false,
	pricesep = 5000,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_POLICE, TEAM_COMMANDO, TEAM_SWAT, TEAM_CHIEF},
})

DarkRP.createShipment("Explosive Mine x2", {
	model = "models/props_combine/combine_mine01.mdl",
	entity = "weapon_mad_mine",
	price = 5000,
	amount = 1,
	seperate = false,
	pricesep = 5000,
	noship = false,
	allowed = {TEAM_IADEALER},
})

-- Single Weapons --

DarkRP.createShipment("Single USP Tactical", {
	model = "models/weapons/w_pist_usp.mdl",
	entity = "weapon_mad_usp",
	price = 255,
	amount = 1,
	seperate = false,
	pricesep = 270,
	noship = false,
	allowed = {TEAM_HITMAN, TEAM_HITMANP},
	category = "Single Weapons",
})

DarkRP.createShipment("Single M249SAW", {
	model = "models/weapons/w_mach_m249para.mdl",
	entity = "weapon_mad_m249",
	price = 2250,
	amount = 1,
	seperate = false,
	pricesep = 700,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Single Weapons",
})

DarkRP.createShipment("Single Scout", {
	model = "models/weapons/w_snip_scout.mdl",
	entity = "weapon_mad_scout",
	price = 495,
	amount = 1,
	seperate = false,
	pricesep = 270,
	noship = false,
	allowed = {TEAM_HITMAN, TEAM_HITMANP},
	category = "Single Weapons",
})

DarkRP.createShipment("Single SG550 commando", {
	model = "models/weapons/w_snip_sg550.mdl",
	entity = "weapon_mad_sg550",
	price = 430,
	amount = 1,
	seperate = false,
	pricesep = 270,
	noship = false,
	allowed = {TEAM_HITMAN},
	category = "Single Weapons",
})

DarkRP.createShipment("Single AWP", {
	model = "models/weapons/w_snip_awp.mdl",
	entity = "weapon_mad_awp",
	price = 645,
	amount = 1,
	seperate = false,
	pricesep = 645,
	noship = false,
	allowed = {TEAM_HITMAN},
	category = "Single Weapons",
})

DarkRP.createShipment("Single Crossbow", {
	model = "models/weapons/w_crossbow.mdl",
	entity = "weapon_mad_crossbow",
	price = 700,
	amount = 1,
	seperate = false,
	pricesep = 700,
	noship = false,
	allowed = {TEAM_HITMAN},
	category = "Single Weapons",
})

DarkRP.createShipment("Single Silenced Sniper Rifle", {
	model = "models/weapons/w_snip_g3sg1.mdl",
	entity = "weapon_mad_sg3",
	price = 750,
	amount = 1,
	seperate = false,
	pricesep = 750,
	noship = false,
	allowed = {TEAM_HITMAN},
	category = "Single Weapons",
})

-- Ammo --

DarkRP.createShipment("Bulk Pistol Ammo", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "item_ammo_pistol",
	price = 300,
	amount = 10,
	seperate = false,
	pricesep = 30,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Ammo",
})

DarkRP.createShipment("Bulk Buckshot Ammo", {
	model = "models/Items/BoxBuckshot.mdl",
	entity = "item_box_buckshot",
	price = 500,
	amount = 10,
	seperate = false,
	pricesep = 50,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Ammo",
})

DarkRP.createShipment("Bulk Rifle/SMG Ammo", {
	model = "models/items/boxmrounds.mdl",
	entity = "item_ammo_smg1",
	price = 800,
	amount = 10,
	seperate = false,
	pricesep = 80,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Ammo",
})

-- Equipment --

DarkRP.createShipment("KeyPad Cracker", {
	model = "models/weapons/w_c4_planted.mdl",
	entity = "keypad_cracker",
	price = 8500,
	amount = 10,
	seperate = false,
	pricesep = 80,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Other",
})

DarkRP.createShipment("Lockpick", {
	model = "models/weapons/w_crowbar.mdl",
	entity = "lockpick",
	price = 10000,
	amount = 10,
	seperate = false,
	pricesep = 80,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Other",
})

-- Health and Armour --

DarkRP.createShipment("Medium Med Kit", {
	model = "models/Items/HealthKit.mdl",
	entity = "item_healthkit",
	price = 500,
	amount = 10,
	seperate = false,
	pricesep = 205,
	noship = false,
	allowed = {TEAM_MEDIC},
	category = "Health and Armour",
})

DarkRP.createEntity("Large Med Kit", {
	ent = "weapon_mad_medic",
	model = "models/Items/HealthKit.mdl",
	price = 3000,
	max = 1,
	cmd = "/medkit",
	allowed = {TEAM_MEDIC},
	category = "Health and Armour",
})

DarkRP.createShipment("Armour Shipment", {
	model = "models/Items/battery.mdl",
	entity = "item_battery",
	price = 300,
	amount = 7,
	seperate = false,
	pricesep = 205,
	noship = false,
	allowed = {TEAM_MEDIC, TEAM_GUN, TEAM_IADEALER},
	category = "Health and Armour",
})
