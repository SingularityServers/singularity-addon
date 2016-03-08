--[[---------------------------------------------------------------------------
Door groups
---------------------------------------------------------------------------
The server owner can set certain doors as owned by a group of people, identified by their jobs.


HOW TO MAKE A DOOR GROUP:
AddDoorGroup("NAME OF THE GROUP HERE, you will see this when looking at a door", Team1, Team2, team3, team4, etc.)
---------------------------------------------------------------------------]]


-- Example: AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
-- Example: AddDoorGroup("Gundealer only", TEAM_GUN)

AddDoorGroup("Mafia only", TEAM_MOB, TEAM_MAFIA)
AddDoorGroup("Triad only", TEAM_TRIADLEADER, TEAM_TRIAD)
AddDoorGroup("Gangsters only", TEAM_GANGLEADER, TEAM_GANG)