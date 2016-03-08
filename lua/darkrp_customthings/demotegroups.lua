--[[---------------------------------------------------------------------------
Demote groups
---------------------------------------------------------------------------
When a chief of police gets demoted you don't want them to be banned from becoming civil protection officer as well.
That is what demote groups are for.

When someone in a group is demoted, they will be banned from EVERY job in the group.
The examples shown below are the default demote groups

HOW TO CREATE A DEMOTE GROUP:
DarkRP.createDemoteGroup("Name of the group", {TEAM1, TEAM2})
---------------------------------------------------------------------------]]


-- Example: DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
-- Example: DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})

DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_GANGLEADER})
DarkRP.createDemoteGroup("Triads", {TEAM_TRIAD, TEAM_TRIADLEADER})
DarkRP.createDemoteGroup("Mafia", {TEAM_MAFIA, TEAM_MOB})