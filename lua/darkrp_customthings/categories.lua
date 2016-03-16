

--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
-- Shipment Categories --

DarkRP.createCategory{
    name = "Sub Machine Guns",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 104,
}

DarkRP.createCategory{
    name = "Health and Armour",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 105,
}

DarkRP.createCategory{
    name = "Pistols",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 106,
}

DarkRP.createCategory{
    name = "Single Weapons",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 107,
}

DarkRP.createCategory{
    name = "Ammo",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 108,
}

DarkRP.createCategory{
    name = "Self Loading Rifles",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 109,
}

DarkRP.createCategory{
    name = "Knives",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 110,
}

DarkRP.createCategory{
    name = "Weapon Attachments",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 111,
}

DarkRP.createCategory{
    name = "Explosives",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 112,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 113,
}

DarkRP.createCategory{
    name = "Shotguns",
    categorises = "shipments",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 114,
}

DarkRP.createCategory{
    name = "Health and Armour",
    categorises = "entities",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Ammo",
    categorises = "entities",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Sniper Rifles",
    categorises = "entities",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "entities",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

-- Job Categories --

DarkRP.createCategory{
    name = "Dealers",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 140, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Citizens",
    categorises = "jobs",
    startExpanded = true,
    color = Color(92, 86, 67, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

