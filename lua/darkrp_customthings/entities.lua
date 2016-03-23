--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]
DarkRP.createEntity("Health Charger", {
	ent = "item_healthcharger",
	model = "models/props_combine/health_charger001.mdl",
	price = 500,
	max = 5,
	cmd = "/healthcharger",
	allowed = {TEAM_MEDIC},
	category = "Health and Armour",
})

DarkRP.createEntity("Suit Charger", {
	ent = "item_suitcharger",
	model = "models/props_combine/suit_charger001.mdl",
	price = 1000,
	max = 5,
	cmd = "/suitcharger",
	allowed = {TEAM_MEDIC},
	category = "Health and Armour",
})

DarkRP.createEntity("Bronze Money Printer", {
    ent = "bronze_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 1000,
    max = 2,
    cmd = "buybronzeprinter",
	sortOrder = 100
})

DarkRP.createEntity("Silver Money Printer", {
    ent = "silver_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 2000,
    max = 2,
    cmd = "buysilverprinter",
	sortOrder = 101
})

DarkRP.createEntity("Golden Money Printer", {
    ent = "golden_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 3500,
    max = 2,
    cmd = "buygoldprinter",
	sortOrder = 102
})

DarkRP.createEntity("Platinum Money printer", {
    ent = "platinum_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 6000,
    max = 1,
    cmd = "buyplatinumprinter",
	sortOrder = 103
})