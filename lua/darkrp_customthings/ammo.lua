#NoSimplerr#
--[[---------------------------------------------------------------------------
Ammo types
---------------------------------------------------------------------------
Ammo boxes that can be purchased in the F4 menu.

Add your custom ammo types in this file. Here's the syntax:
DarkRP.createAmmoType("ammoType", {
    name = "Ammo name",
    model = "Model",
    price = 1234,
    amountGiven = 5678,
    customCheck = function(ply) return ply:IsAdmin()
})

ammoType: The name of the ammo that Garry's mod recognizes
	If you open your SWEP's shared.lua, you can find the ammo name next to
	SWEP.Primary.Ammo = "AMMO NAME HERE"
	or
	SWEP.Secondary.Ammo = "AMMO NAME HERE"

name: The name you want to give to the ammo. This can be anything.

model: The model you want the ammo to have in the F4 menu

price: the price of your ammo in dollars

amountGiven: How much bullets of this ammo is given every time the player buys it

customCheck: (Optional! Advanced!) a Lua function that describes who can buy the ammo.
	Similar to the custom check function for jobs and shipments
	Parameters:
		ply: the player who is trying to buy the ammo

Examples are below!

Pistol ammo type. Used by p228, desert eagle and all other pistols
Example 1:

DarkRP.createAmmoType("pistol", {
	name = "Pistol ammo",
	model = "models/Items/BoxSRounds.mdl",
	price = 30,
	amountGiven = 24
})

Buckshot ammo, used by the shotguns
Example 2:

DarkRP.createAmmoType("buckshot", {
	name = "Shotgun ammo",
	model = "models/Items/BoxBuckshot.mdl",
	price = 50,
	amountGiven = 8
})

Rifle ammo, usually used by assault rifles
Example 3:

DarkRP.createAmmoType("smg1", {
	name = "Rifle ammo",
	model = "models/Items/BoxSRounds.mdl",
	price = 80,
	amountGiven = 30
})

Add new ammo types under the next line!
---------------------------------------------------------------------------]]
DarkRP.createShipment("9x19mm (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_9x19",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})

DarkRP.createShipment("9x18mm (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_9x18",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})

DarkRP.createShipment("556x45mm (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_556x45",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})

DarkRP.createShipment("7.62x39mm (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_762x39",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})

DarkRP.createShipment(".45ACP (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_45acp",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})

DarkRP.createShipment(".357SIG (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_357sig",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})

DarkRP.createShipment("12 Gauge (Shipment)", {
	model = "models/Items/BoxSRounds.mdl",
	entity = "fas2_ammo_12gauge",
	price = 1000,
	amount = 10,
	separate = false,
	pricesep = nil,
	noship = false,
	allowed = {TEAM_GUN},
	category = "Ammo",
})
