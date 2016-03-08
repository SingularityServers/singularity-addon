--[[---------------------------------------------------------------------------
DarkRP Agenda's
---------------------------------------------------------------------------
Agenda's can be set by the agenda manager and read by both the agenda manager and the other teams connected to it.


HOW TO MAKE AN AGENDA:
AddAgenda(Title of the agenda, Manager (who edits it), {Listeners (the ones who just see and follow the agenda)})
---------------------------------------------------------------------------]]
-- Example: AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
-- Example: AddAgenda("Police agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE})

AddAgenda("Gangster's agenda", TEAM_GANGLEADER, {TEAM_GANG})
AddAgenda("Mafia's agenda", TEAM_MOB, {TEAM_MAFIA})
AddAgenda("Triad's agenda", TEAM_TRIADLEADER, {TEAM_TRIAD})