#NoSimplerr#
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

DarkRP.createShipment("Glock 20", {
	model = "models/weapons/w_pist_glock18.mdl",
	entity = "fas2_glock20",
	price = 2700,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN, TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("Desert Eagle", {
	model = "models/weapons/w_pist_deagle.mdl",
	entity = "fas2_deagle",
	price = 3200,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("m1911", {
	model = "models/weapons/w_pist_fiveseven.mdl",
	entity = "fas2_m1911",
	price = 2700,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("OTs-33 Pernach", {
	model = "models/weapons/world/pistols/ots33.mdl",
	entity = "fas2_ots33",
	price = 3800,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("p226", {
	model = "models/weapons/w_pist_p228.mdl",
	entity = "fas2_p226",
	price = 2600,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Pistols",
})

DarkRP.createShipment("Revolver", {
	model = "models/weapons/w_357.mdl",
	entity = "fas2_ragingbull",
	price = 3000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Pistols",
})

DarkRP.createShipment("M11A1", {
	model = "models/weapons/w_smg_mac10.mdl",
	entity = "fas2_mac11",
	price = 6900,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Pistols",
})


-- Self Loading Rifles --

DarkRP.createShipment("AK-47", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "fas2_ak47",
	price = 6900,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("AK-74", {
	model = "models/weapons/w_rif_ak47.mdl",
	entity = "fas2_ak74",
	price = 6700,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("FAMAS-F1", {
	model = "models/weapons/w_rif_famas.mdl",
	entity = "fas2_famas",
	price = 7800,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("G36C", {
	model = "models/weapons/w_snip_g3sg1.mdl",
	entity = "fas2_g36c",
	price = 6400,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("M4A1", {
	model = "models/weapons/w_rif_m4a1.mdl",
	entity = "fas2_m4a1",
	price = 4200,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("Sako RK-95", {
	model = "models/weapons/world/rifles/rk95.mdl",
	entity = "fas2_rk95",
	price = 6500,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("SG 550", {
	model = "models/weapons/w_rif_sg552.mdl",
	entity = "fas2_sg550",
	price = 6500,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("SG 552", {
	model = "models/weapons/w_rif_sg552.mdl",
	entity = "fas2_sg552",
	price = 6300,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("SKS", {
	model = "models/weapons/world/rifles/sks.mdl",
	entity = "fas2_sks",
	price = 4600,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("SR-25", {
	model = "models/weapons/w_snip_sg550.mdl",
	entity = "fas2_sr25",
	price = 11000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})


DarkRP.createShipment("MP5A5", {
	model = "models/weapons/w_smg_mp5.mdl",
	entity = "fas2_mp5a5",
	price = 4500,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Self Loading Rifles",
})

DarkRP.createShipment("PP-19 Bizon", {
	model = "models/weapons/w_smg_biz.mdl",
	entity = "fas2_pp19",
	price = 4700,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Self Loading Rifles",
})

-- Sniper Rifles --

DarkRP.createShipment("M21", {
	model = "models/weapons/w_snip_sg550.mdl",
	entity = "fas2_m21",
	price = 9900,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Sniper Rifles",
})

-- Shotguns --

--[[----
DarkRP.createShipment("KS-23", {
	model = "models/weapons/world/shotguns/ks23.mdl",
	entity = "fas2_ks23",
	price = 4200,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Shotguns",
})
----]]

DarkRP.createShipment("Remington 870", {
	model = "models/weapons/world/shotguns/ks23.mdl",
	entity = "fas2_rem870",
	price = 4000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Shotguns",
})

-- Equipment --

DarkRP.createShipment("M67 (x3)", {
	model = "models/weapons/w_eq_fraggrenade.mdl",
	entity = "fas2_m67",
	price = 20000,
	amount = 3,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Explosives",
	spareammo = 1,
	clip1 = 1,
	clip2 = 0
})

DarkRP.createShipment("Machete", {
	model = "models/weapons/w_knife_t.mdl",
	entity = "fas2_machete",
	price = 1280,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Knives",
})

DarkRP.createShipment("DV2", {
	model = "models/weapons/w_knife_t.mdl",
	entity = "fas2_dv2",
	price = 1280,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Knives",
})

DarkRP.createShipment("KeyPad Cracker", {
	model = "models/weapons/w_c4_planted.mdl",
	entity = "keypad_cracker",
	price = 6800,
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
	price = 6560,
	amount = 10,
	seperate = false,
	pricesep = 80,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Other",
})

-- Weapon Attachments --

DarkRP.createShipment("CompM4", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_compm4",
	price = 100,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Weapon Attachments",
})

DarkRP.createShipment("ECLAN C79", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_c79",
	price = 120,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Weapon Attachments",
})

DarkRP.createShipment("eotech Holo Sight", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_eotech",
	price = 100,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Weapon Attachments",
})

DarkRP.createShipment("Foregrip", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_foregrip",
	price = 60,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Weapon Attachments",
})

DarkRP.createShipment("M21 Extended Mag", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_m2120mag",
	price = 180,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Weapon Attachments",
})

DarkRP.createShipment("Russian PSO sight", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_pso1",
	price = 100,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Weapon Attachments",
})

DarkRP.createShipment("SG550 Extended Mag", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_sg55x30mag",
	price = 160,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Weapon Attachments",
})

DarkRP.createShipment("SKS Extended Mag", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_sks20mag",
	price = 180,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Weapon Attachments",
})

DarkRP.createShipment("SKS 30Rnd Mag", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_sks30mag",
	price = 280,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER},
	category = "Weapon Attachments",
})

DarkRP.createShipment("Suppressor", {
	model = "models/props_junk/cardboard_box004a.mdl",
	entity = "fas2_att_suppressor",
	price = 70,
	amount = 1,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_IADEALER, TEAM_GUN},
	category = "Weapon Attachments",
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

DarkRP.createShipment("First Aid Kit", {
	model = "models/items/healthkit.mdl",
	entity = "fas2_ifak",
	price = 1200,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
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

--[[---------------------------------------------------------------------------
9x19mm
Suppress
CompM4
Grip
9x18mm
5.56x45mm
EoTech
7.62x39mm
.45ACP
.357SIG
12 Gauge
30RND
20RND
---------------------------------------------------------------------------]]

