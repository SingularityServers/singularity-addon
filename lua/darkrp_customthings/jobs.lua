--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[The Citizen is the most basic level of society you can hold besides being a hobo.
		
	You have no specific role in city life.
	
	
	
	Tip: Job possibilities are endless! Open a casino, sell your wire contraptions or even organize an illegal underground fight club. The choice is yours!]],
	weapons = {},
	command = "citizen",
	max = 0,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
})

TEAM_TRIAD = DarkRP.createJob("Triad", {
	color = Color(193, 0, 0, 255),
	model = {
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Male_05.mdl"},
	description = [[You follow all orders given to you by the Triad Leader.
	
	If you feel that the Leader is not providing you with what you need,
	you may either forcefully throw him out with your fellow members.. 
	or plot an assassination against him.
	
	
	
	Tip: Try extorting local businesses for protection money, riading rival gang properties or simply
	set up an underground money printing facilities.
	
	Commands: /buymoneyprinter, /buydruglab]],
	weapons = {},
	command = "triad",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Gangsters",
})

TEAM_TRIADLEADER = DarkRP.createJob("Triad Leader", {
	color = Color(127, 0, 0, 255),
	model = "models/player/gman_high.mdl",
	description = [[The leader of the notorious Triads.
	
	As leader, it is your responsibility to command fellow members of the
	Triads, enforce the rules within the faction and provide any hardware
	if needed.
	
	
	
	Tip: Play it safe, you will lose your position upon death.
	
	Commands: /buymoneyprinter, /buydruglab, /agenda]],
	weapons = {"lockpick", "unarrest_stick", "keypad_cracker"},
	command = "triadleader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	NeedToChangeFrom = TEAM_TRIAD,
	hasLicense = false,
	category = "Gangsters",
	    PlayerDeath = function(ply)
            if ply:Team() == TEAM_TRIADLEADER then
                    ply:changeTeam( TEAM_TRIAD, true )
                    for k,v in pairs( player.GetAll() ) do
                            DarkRP.notify(v, 1, 4, "The leader of the Triads has been assassinated!")
                    end
            end
    end,
})

TEAM_MAFIA = DarkRP.createJob("Mafia", {
	color = Color(75, 75, 75, 255),
	model = {
		"models/player/group03/male_02.mdl",
		"models/player/Group03/male_04.mdl",
		"models/player/Group03/male_06.mdl",
		"models/player/Group03/male_07.mdl",
		"models/player/Group03/male_08.mdl",
		"models/player/Group03/male_09.mdl",
		"models/player/Group03/female_02.mdl",
		"models/player/group03/female_06.mdl"},
	description = [[You follow all orders given to you by the Mob Boss.
	
	If you feel that the Leader is not providing you with what you need,
	you may either forcefully throw him out with your fellow members.. 
	or plot an assassination against him.
	
	
	
	Tip: Try extorting local businesses for protection money, riading rival gang properties or simply
	set up an underground money printing facilities.
	
	Commands: /buymoneyprinter, /buydruglab]],
	weapons = {},
	command = "mafia",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Gangsters",
})


TEAM_MOB = DarkRP.createJob("The Don", {
	color = Color(25, 25, 25, 255),
	model = "models/player/gman_high.mdl",
	description = [[The Don of the Mafia.
	
	As leader, it is your responsibility to command fellow members of the
	faction, enforce the rules within the faction and provide any hardware
	if needed.
	
	
	
	Tip: Play it safe, you will lose your position upon death.
	
	Commands: /buymoneyprinter, /buydruglab, /agenda]],
	weapons = {"lockpick", "unarrest_stick", "keypad_cracker"},
	command = "mobboss",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	NeedToChangeFrom = TEAM_MAFIA,
	hasLicense = false,
	category = "Gangsters",
    PlayerDeath = function(ply)
            if ply:Team() == TEAM_MOB then
                    ply:changeTeam( TEAM_MAFIA, true )
                    for k,v in pairs( player.GetAll() ) do
                            DarkRP.notify(v, 1, 4, "The Don has been assassinated!")
                    end
            end
    end,
})

TEAM_GANG = DarkRP.createJob("Gangster", {
	color = Color(190, 0, 190, 255),
	model = {
		"models/player/group03/male_01.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/group03/female_03.mdl"},
	description = [[You follow all orders given to you by the Gang Leader.
	
	If you feel that the Leader is not providing you with what you need,
	you may either forcefully throw him out with your fellow members.. 
	or plot an assassination against him.
	
	
	
	Tip: Try extorting local businesses for protection money, riading rival gang properties or simply
	set up an underground money printing facilities.
	
	Commands: /buymoneyprinter, /buydruglab]],
	weapons = {},
	command = "gangster",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Gangsters",
})

TEAM_GANGLEADER = DarkRP.createJob("Gang Leader", {
	color = Color(120, 0, 190, 255),
	model = "models/player/gman_high.mdl",
	description = [[The head of the local Singularity gang.
	
	As leader, it is your responsibility to command fellow members of the
	faction, enforce the rules within the faction and provide any hardware
	if needed.
	
	
	
	Tip: Play it safe, you will lose your position upon death.
	
	Commands: /buymoneyprinter, /buydruglab, /agenda]],
	weapons = {"lockpick", "unarrest_stick", "keypad_cracker"},
	command = "gangleader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	NeedToChangeFrom = TEAM_GANG,
	hasLicense = false,
	category = "Gangsters",
    PlayerDeath = function(ply)
            if ply:Team() == TEAM_GANGLEADER then
                    ply:changeTeam( TEAM_GANG, true )
                    for k,v in pairs( player.GetAll() ) do
                            DarkRP.notify(v, 1, 4, "The Gang Leader has been assassinated!")
                    end
            end
    end,
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
	color = Color(25, 25, 170, 255),
	model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
	description = [[Protector of the City.
	
	You must constantly uphold the law and ensure that Singularity is kept a 
	safe place. You follow all orders from your Chief, no questions asked.
	
	
	
	Commands: /wanted <name> <reason>, unwanted <name>, /warrant <name> <reason>]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 4,
	salary = GAMEMODE.Config.normalsalary * 1.45,
	admin = 0,
	vote = true,
	hasLicense = true,
	ammo = {
		["pistol"] = 60,
	},
    category = "Civil Protection",
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[100% Legit Salesman.
	
	You provide the city with completely legal firearms, purely for self defence. Citizens purchasing weapons must obtain a weapons license. Selling weapons to a citizen without a license is a crime.]],
	weapons = {},
	command = "gundealer",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = true,
	category = "Dealers",
})

TEAM_IADEALER = DarkRP.createJob("Illegal Arms Dealer", {
	color = Color(255, 100, 0, 255),
	model = "models/player/soldier_stripped.mdl",
	description = [[You deal illegal gadgets and explosives to others in need.
	By selling your items, you are comitting a crime.. and therefor must
	keep a low profile.
	
	
	
	Tip: Try offering remote ammo delivery services!]],
	weapons = {},
	command = "armsdealer",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
    category = "Dealers",
	NeedToChangeFrom = TEAM_GUN
})

TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[As the Chief of the Civil Protection department, 
	it is your duty to ensure all officers are upholding the law 
	and working their hardest to bring a safe community. You 
	communicate directly with the mayor and follow all of his orders.
	
	
	
	Tip: Try organizing police checkpoints to ensure citizens aren't carrying
	any firearms without a license!
	
	Commands: /agenda, /wanted <name> <reason>, unwanted <name>, /warrant <name> <reason>]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.67,
	admin = 0,
	vote = false,
	hasLicense = true,
	chief = true,
	NeedToChangeFrom = TEAM_POLICE,
	ammo = {
		["pistol"] = 60,
	},
    category = "Civil Protection",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[You run this city. You receive a very high income so you can in return,
	provide the Civil Protection units with all the weapons that they need. If you cannot provide the Civil Protection with the weapons they require, you can be demoted from your job.

	With such big responsibilities comes great risks, there will always be
	someone out to get you. If you are murdered, you return back to
	a normal citizen.
	
	
	
	Tip: Have CP units enforce local firearm laws, to encourage citizens to purchase weapon licenses.
	
	Commands: /givelicense, /lockdown, /unlockdown, /broadcast <message>]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.89,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayor = true,
	category = "Civil Protection",
    PlayerDeath = function(ply)
            if ply:Team() == TEAM_MAYOR then
                    ply:changeTeam( TEAM_CITIZEN, true )
                    for k,v in pairs( player.GetAll() ) do
                            DarkRP.notify(v, 1, 4, "The mayor has been assassinated!")
                    end
            end
    end,
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = Color(80, 45, 0, 255),
	model = "models/player/corpse1.mdl",
	description = [[You're homeless, you smell.. and nobody 
	likes you. You build your trashy houses and beg for money.
	
	The ideal job.
	
	
	
	Tip: Try setting up wire donation bins, people love them.]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 5,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	hobo = true,
	category = "Citizens",
})

TEAM_HITMAN = DarkRP.createJob("HitMan", {
	color = Color(255, 0, 119, 255),
	model = "models/player/leet.mdl",
	description = [[You provide assassinations for money. 
	
	Public-ally advertising your services is risky, illegal and can have you arrested.
	
	
	
	Tip: Advertise your business to local gangs, offering to assasinate their leaders.
	
	Commands: /hitprice <price>]],
	weapons = {"weapon_mad_usp", "weapon_mad_knife"},
	command = "hitman",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = true,
	hasLicense = false,
	category = "Other",
})

TEAM_SECURITY = DarkRP.createJob("Security", {
	color = Color(47, 79, 79, 255),
	model = "models/player/odessa.mdl",
	description = [[Get paid to protect other people's property.

	You can either provide on call services, private body guard services or store protection.]],
	weapons = {"stunstick"},
	command = "security",
	max = 5,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Other",
})

TEAM_THIEF = DarkRP.createJob("Thief", {
	color = Color(60, 30, 120, 255),
	model = "models/player/phoenix.mdl",
	description = [[Rob houses, steal shit, even get hired to perform 
	specific 'dirty' tasks.
	
	
	
	Tips: Try offering your services to local gun dealers to eliminate the competition.]],
	weapons = {"lockpick", "keypad_cracker"},
	command = "thief",
	max = 4,
	salary = 55,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Other",
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = "models/player/kleiner.mdl",
    description = [[With your medical knowledge you work to restore players to full health.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Other",
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
DarkRP.addHitmanTeam(TEAM_TRIADLEADER)
DarkRP.addHitmanTeam(TEAM_MOB)
DarkRP.addHitmanTeam(TEAM_GANGLEADER)
