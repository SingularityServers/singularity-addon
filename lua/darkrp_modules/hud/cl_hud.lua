#NoSimplerr#
/*---------------------------------------------------------------------------
Custom Singularity HUD
---------------------------------------------------------------------------*/
local ConVars = {}
local HUDWidth
local HUDHeight

local Color = Color
local CurTime = CurTime
local cvars = cvars
local DarkRP = DarkRP
local draw = draw
local GetConVar = GetConVar
local hook = hook
local IsValid = IsValid
local Lerp = Lerp
local localplayer
local math = math
local pairs = pairs
local ScrW, ScrH = ScrW, ScrH
local SortedPairs = SortedPairs
local string = string
local surface = surface
local table = table
local timer = timer
local tostring = tostring
local plyMeta = FindMetaTable("Player")

local colors = {}
colors.black = Color(0, 0, 0, 255)
colors.blue = Color(0, 0, 255, 255)
colors.brightred = Color(200, 30, 30, 255)
colors.brown = Color(167, 111, 0, 255)
colors.darkred = Color(111, 110, 93, 100)
colors.darkblack = Color(0, 0, 0, 200)
colors.gray1 = Color(0, 0, 0, 155)
colors.gray2 = Color(51, 58, 51,100)
colors.lightbrown1 = Color(127, 111, 63,40)
colors.lightbrown2 = Color(127, 111, 63,100)
colors.red = Color(255, 30, 0, 255)
colors.white = Color(255, 255, 255, 255)
colors.white1 = Color(255, 255, 255, 200)
 
CreateClientConVar("weaponhud", 0, true, false)

local function AddFonts()
	surface.CreateFont( "ChatFont", {
		font 		= "Calibri",
		size 		= 18,
		weight 		= 500,
		blursize 	= 0,
		scanlines 	= 0,
		antialias 	= true,
		underline 	= false,
		italic 		= false,
		strikeout 	= false,
		symbol 		= false,
		rotary 		= false,
		shadow 		= false,
		additive 	= false,
		outline 	= true
	})
end

local function AddFonts()
	surface.CreateFont( "NameFont", {
		font 		= "Calibri",
		size 		= 18,
		weight 		= 500,
		blursize 	= 0,
		scanlines 	= 0,
		antialias 	= true,
		underline 	= false,
		italic 		= false,
		strikeout 	= false,
		symbol 		= false,
		rotary 		= false,
		shadow 		= false,
		additive 	= false,
		outline 	= true
	})
end
hook.Add("Initialize","createFonts",AddFonts)
 
local function ReloadConVars()
	ConVars = {
		background = {0,0,0,100},
		Healthbackground = {0,0,0,200},
		Healthforeground = {140,0,0,180},
		HealthText = {255,255,255,200},
		Job1 = {0,0,150,200},
		Job2 = {0,0,0,255},
		salary1 = {0,150,0,200},
		salary2 = {0,0,0,255}
	}

	for name, Colour in pairs(ConVars) do
		ConVars[name] = {}
		for num, rgb in SortedPairs(Colour) do
			local CVar = GetConVar(name..num) or CreateClientConVar(name..num, rgb, true, false)
			table.insert(ConVars[name], CVar:GetInt())

			if not cvars.GetConVarCallbacks(name..num, false) then
				cvars.AddChangeCallback(name..num, function() timer.Simple(0,ReloadConVars) end)
			end
		end
		ConVars[name] = Color(unpack(ConVars[name]))
	end


	HUDWidth = (GetConVar("HudW") or  CreateClientConVar("HudW", 240, true, false)):GetInt()
	HUDHeight = (GetConVar("HudH") or CreateClientConVar("HudH", 115, true, false)):GetInt()

	if not cvars.GetConVarCallbacks("HudW", false) and not cvars.GetConVarCallbacks("HudH", false) then
		cvars.AddChangeCallback("HudW", function() timer.Simple(0,ReloadConVars) end)
		cvars.AddChangeCallback("HudH", function() timer.Simple(0,ReloadConVars) end)
	end
end
ReloadConVars()
 
local function formatNumber(n)
        n = tonumber(n)
        if (!n) then
                return 0
        end
        if n >= 1e14 then return tostring(n) end
    n = tostring(n)
    sep = sep or ","
    local dp = string.find(n, "%.") or #n+1
        for i=dp-4, 1, -3 do
                n = n:sub(1, i) .. sep .. n:sub(i+1)
    end
    return n
end
 
 
local Scrw, Scrh, RelativeX, RelativeY
/*---------------------------------------------------------------------------
HUD Seperate Elements
---------------------------------------------------------------------------*/
local Health = 0
local Armor = 0
local Hunger = 0
local function DrawHealth()
	Health = math.min(100, (Health == LocalPlayer():Health() and Health) or Lerp(0.1, Health, LocalPlayer():Health()))
	Armor = math.min(100, (Armor == LocalPlayer():Armor() and Armor) or Lerp(0.1, Armor, LocalPlayer():Armor()))
	
	local DrawHealth = math.Min(Health / GAMEMODE.Config.startinghealth, 1)
	local DrawArmor = math.Min(Armor / GAMEMODE.Config.startinghealth, 1)
   
	local Border = math.Min(6, math.pow(2, math.Round(3*DrawHealth)))

	surface.SetTexture(surface.GetTextureID("Hud/HbarShadow"))
	surface.SetDrawColor(Color(255,255,255,255))
   
	surface.SetTexture(surface.GetTextureID("Hud/Hbar"))
	surface.SetDrawColor(Color(0,0,20,255))
	surface.DrawRect(RelativeX+8,RelativeY-HUDHeight+9,345*DrawHealth+2,22)
	surface.SetDrawColor(Color(155,0,0,255))
	surface.DrawRect(RelativeX+9,RelativeY-HUDHeight+10,345*DrawHealth,20)
	surface.SetDrawColor(Color(185,0,0,255))
	surface.DrawRect(RelativeX+9,RelativeY-HUDHeight+10,345*DrawHealth,10)
   
	surface.SetDrawColor(Color(0,0,20,255))
	surface.DrawRect(RelativeX+8,RelativeY-HUDHeight+9+33,345*DrawArmor+2,22)
	surface.SetDrawColor(Color(205,205,205,255))
	surface.DrawRect(RelativeX+9,RelativeY-HUDHeight+10+33,345*DrawArmor,20)
	surface.SetDrawColor(Color(228,228,228,255))
	surface.DrawRect(RelativeX+9,RelativeY-HUDHeight+10+33,345*DrawArmor,10)
	
	if(LocalPlayer().DarkRPVars and LocalPlayer().DarkRPVars.Energy) then
		local lphunger=math.Round(LocalPlayer().DarkRPVars.Energy)
		Hunger=math.min(100, (Hunger == lphunger and Hunger) or Lerp(0.1, Hunger, lphunger))
		local DrawHunger=math.Min(Hunger/100,1)
		surface.SetDrawColor(Color(0,0,20,255))
		surface.DrawRect(RelativeX+8,RelativeY-HUDHeight+9+33+33,345*DrawHunger+2,22)
		surface.SetDrawColor(Color(0,102,51,255))
		surface.DrawRect(RelativeX+9,RelativeY-HUDHeight+10+33+33,345*DrawHunger,20)
		surface.SetDrawColor(Color(0,132,66,255))
		surface.DrawRect(RelativeX+9,RelativeY-HUDHeight+10+33+33,345*DrawHunger,10)
		draw.DrawText(math.Max(0, lphunger), "ChatFont",RelativeX+348-math.Clamp(345*(1-lphunger/100),0,310),RelativeY-HUDHeight+77, ConVars.HealthText, 2)
	end
	
	// Shadow text
	draw.DrawText(math.Max(0, math.Round(LocalPlayer():Health())), "ChatFont",RelativeX+348-math.Clamp(345*(1-DrawHealth),0,310) ,RelativeY-HUDHeight+11, ConVars.HealthText, 2)
	if LocalPlayer():Armor() > 1 then draw.DrawText(math.Max(0, math.Round(LocalPlayer():Armor())), "ChatFont",RelativeX+349-math.Clamp(345*(1-DrawArmor),0,310),RelativeY-HUDHeight+44, ConVars.HealthText, 2) end
 
	// Icons
	surface.SetDrawColor(255, 255, 255, 255)
	surface.SetMaterial(Material("icon16/heart.png"))
	surface.DrawTexturedRect(RelativeX + 12,RelativeY-HUDHeight+12, 16, 16)
	surface.SetMaterial(Material("icon16/shield.png"))
	surface.DrawTexturedRect(RelativeX + 12,RelativeY-HUDHeight+12+33, 16, 16)
	surface.SetMaterial(Material("icon16/cup.png"))
	surface.DrawTexturedRect(RelativeX + 12,RelativeY-HUDHeight+12+33+33, 16, 16)
	
end
 
local function DrawInfo()
        LocalPlayer().DarkRPVars = LocalPlayer().DarkRPVars or {}
        local Salary =  (LocalPlayer().DarkRPVars.salary or 0) //LANGUAGE.salary .. CUR .. 
 
 
 
        local wep = LocalPlayer( ):GetActiveWeapon( );
 
        if IsValid(wep) and GAMEMODE.Config.weaponhud then
        local name = wep:GetPrintName();
                draw.DrawText("Weapon: "..name, "UiBold", RelativeX + 5, RelativeY - HUDHeight - 18, Color(255, 255, 255, 255), 0)
        end
 
        local job = LocalPlayer().DarkRPVars.job or ""
        draw.DrawText(job, "DarkRPHUD1", RelativeX + 150+40 -(157), RelativeY - HUDHeight - (22), Color(255,255,255,255), 0)
        draw.DrawText(Salary, "DarkRPHUD1", RelativeX + 150+40 +(20), RelativeY - HUDHeight - (22), Color(255,255,255,255), 0)
       
 
        surface.SetFont("DarkRPHUD1")
        local w, h = surface.GetTextSize(Salary)
 
       local text = (formatNumber(LocalPlayer().DarkRPVars.money)) or 0 -- CUR ..       
	   
        draw.DrawText(text, "DarkRPHUD1", RelativeX + 15 +(255), RelativeY - HUDHeight + 12 -(34), Color(255,255,255,255), 0)

		// Icons
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(Material("icon16/user_gray.png"))
		surface.DrawTexturedRect(RelativeX + 12,RelativeY-HUDHeight-21, 16, 16)
		surface.SetMaterial(Material("icon16/money_add.png"))
		surface.DrawTexturedRect(RelativeX + 190,RelativeY-HUDHeight-21, 16, 16)
		surface.SetMaterial(Material("icon16/money_dollar.png"))
		surface.DrawTexturedRect(RelativeX + 252,RelativeY-HUDHeight-21, 16, 16)
end
 
local Page = Material("icon16/page_white_text.png")
local function GunLicense()
	if localplayer:getDarkRPVar("HasGunlicense") then
		surface.SetMaterial(Page)
		surface.SetDrawColor(255, 255, 255, 255)
		surface.DrawTexturedRect(RelativeX + HUDWidth, Scrh - 185																		, 22, 22)
	end
end


local agendaText
local function Agenda()
	local shouldDraw = hook.Call("HUDShouldDraw", GAMEMODE, "DarkRP_Agenda")
	if shouldDraw == false then return end

	local agenda = localplayer:getAgendaTable()
	if not agenda then return end
	agendaText = agendaText or DarkRP.textWrap((localplayer:getDarkRPVar("agenda") or ""):gsub("//", "\n"):gsub("\\n", "\n"), "DarkRPHUD1", 440)

	draw.RoundedBoxEx(10, 10, 25, 460, 110, colors.lightbrown1)
	draw.RoundedBoxEx(10, 12, 27, 456, 106, colors.gray2)
	draw.RoundedBoxEx(10, 12, 27, 456, 20, colors.darkred)

	draw.DrawNonParsedText(agenda.Title, "DarkRPHUD1", 30, 27, colors.red, 0)
	draw.DrawNonParsedText(agendaText, "DarkRPHUD1", 30, 55, colors.white, 0)
end

hook.Add("DarkRPVarChanged", "agendaHUD", function(ply, var, _, new)
	if ply ~= localplayer then return end
	if var == "agenda" and new then
		agendaText = DarkRP.textWrap(new:gsub("//", "\n"):gsub("\\n", "\n"), "DarkRPHUD1", 440)
	else
		agendaText = nil
	end

	if var == "salary" then
		salaryText = DarkRP.getPhrase("salary", DarkRP.formatMoney(new), "")
	end

	if var == "job" or var == "money" then
		JobWalletText = string.format("%s\n%s",
			DarkRP.getPhrase("job", var == "job" and new or localplayer:getDarkRPVar("job") or ""),
			DarkRP.getPhrase("wallet", var == "money" and DarkRP.formatMoney(new) or DarkRP.formatMoney(localplayer:getDarkRPVar("money")), "")
		)
	end
end)
 
local VoiceChatTexture = surface.GetTextureID("voice/icntlk_pl")
local function DrawVoiceChat()
	if localplayer.DRPIsTalking then
		local chbxX, chboxY = chat.GetChatBoxPos()

		local Rotating = math.sin(CurTime()*3)
		local backwards = 0
		if Rotating < 0 then
			Rotating = 1-(1+Rotating)
			backwards = 180
		end
		surface.SetTexture(VoiceChatTexture)
		surface.SetDrawColor(ConVars.Healthforeground)
		surface.DrawTexturedRectRotated(Scrw - 100, chboxY, Rotating*96, 96, backwards)
	end
end
 
local function LockDown()
	local chbxX, chboxY = chat.GetChatBoxPos()
	if GetGlobalBool("DarkRP_LockDown") then
		local cin = (math.sin(CurTime()) + 1) / 2
		local chatBoxSize = math.floor(Scrh / 4)
		draw.DrawNonParsedText(DarkRP.getPhrase("lockdown_started"), "ScoreboardSubtitle", chbxX, chboxY + chatBoxSize, Color(cin * 255, 0, 255 - (cin * 255), 255), TEXT_ALIGN_LEFT)
	end
end
 
local Arrested = function() end
 
usermessage.Hook("GotArrested", function(msg)
	local StartArrested = CurTime()
	local ArrestedUntil = msg:ReadFloat()

	Arrested = function()
		if CurTime() - StartArrested <= ArrestedUntil and localplayer:getDarkRPVar("Arrested") then
			draw.DrawNonParsedText(DarkRP.getPhrase("youre_arrested", math.ceil(ArrestedUntil - (CurTime() - StartArrested))), "DarkRPHUD1", Scrw/2, Scrh - Scrh/12, colors.white, 1)
		elseif not localplayer:getDarkRPVar("Arrested") then
			Arrested = function() end
		end
	end
end)
 
local AdminTell = function() end
 
usermessage.Hook("AdminTell", function(msg)
	timer.Destroy("DarkRP_AdminTell")
	local Message = msg:ReadString()

	AdminTell = function()
		draw.RoundedBox(4, 10, 10, Scrw - 20, 110, colors.darkblack)
		draw.DrawNonParsedText(DarkRP.getPhrase("listen_up"), "GModToolName", Scrw / 2 + 10, 10, colors.white, 1)
		draw.DrawNonParsedText(Message, "ChatFont", Scrw / 2 + 10, 90, colors.brightred, 1)
	end

	timer.Create("DarkRP_AdminTell", 10, 1, function()
		AdminTell = function() end
	end)
end)
 
/*---------------------------------------------------------------------------
Drawing the HUD elements such as Health etc.
---------------------------------------------------------------------------*/
local function DrawHUD()
	localplayer = localplayer and IsValid(localplayer) and localplayer or LocalPlayer()
	if not IsValid(localplayer) then return end

	local shouldDraw = hook.Call("HUDShouldDraw", GAMEMODE, "DarkRP_HUD")
	if shouldDraw == false then return end

        Scrw, Scrh = ScrW(), ScrH()
        RelativeX, RelativeY = 8, Scrh-10
 
		surface.SetMaterial(Material("Hud/hudbg.png"))
		surface.SetDrawColor(Color(255,255,255,255))
		surface.DrawTexturedRect(RelativeX,RelativeY-HUDHeight-34,300+62,108+32)
		if type(LocalPlayer():GetActiveWeapon().Getdurability)=="function" and LocalPlayer():GetActiveWeapon().Primary.ClipSize~=-1 then
			draw.RoundedBox(6, Scrw-108, Scrh-110, 100, 100, Color(0,0,0,230))
		end
        DrawHealth()
        DrawInfo()
        GunLicense()
		Agenda()
        DrawVoiceChat()
        LockDown()
 
        Arrested()
        AdminTell()
	TestDrawHud()
	DrawShitOver() 
end
 
/*---------------------------------------------------------------------------
Entity HUDPaint things
---------------------------------------------------------------------------*/
local function DrawPlayerInfo(ply)
        local pos = ply:EyePos()
		local scale = 1
 
        pos.z = pos.z + 10 -- The position we want is a bit above the position of the eyes
        pos = pos:ToScreen()
        pos.y = pos.y - 50 -- Move the text up a few pixels to compensate for the height of the text
		 
        if GAMEMODE.Config.showname and not ply.DarkRPVars.wanted then
			draw.DrawText(ply:Nick(), "DarkRPHUD2", pos.x + 1, pos.y + 1, Color(0, 0, 0, 255), 1)
			draw.DrawText(ply:Nick(), "DarkRPHUD2", pos.x, pos.y, team.GetColor(ply:Team()), 1)
			surface.SetFont("DarkRPHUD2")
			local uiWidth = 100
			surface.SetDrawColor(Color(0,0,0,255))
			surface.DrawRect(pos.x-((uiWidth+4)/2), pos.y-2 + 25 + (ply:Armor()>0 and 13 or 0), uiWidth+4, 12)
			surface.SetDrawColor(Color(155,0,20,255))
			surface.DrawRect(pos.x-(uiWidth/2), pos.y + 25 + (ply:Armor()>0 and 13 or 0), uiWidth/100*math.Clamp(ply:Health(),0,100), 8)
			surface.SetDrawColor(Color(200,0,26,255))
			surface.DrawRect(pos.x-(uiWidth/2), pos.y + 25 + (ply:Armor()>0 and 13 or 0), uiWidth/100*math.Clamp(ply:Health(),0,100), 4)
			
			if(ply:Armor() > 0) then
				surface.SetDrawColor(Color(0,0,0,255))
				surface.DrawRect(pos.x-((uiWidth+4)/2), pos.y-2+ 25, uiWidth+4, 12)
				surface.SetDrawColor(Color(205,205,205,255))
				surface.DrawRect(pos.x-(uiWidth/2), pos.y + 25, uiWidth/100*math.Clamp(ply:Armor(),0,100), 8)
				surface.SetDrawColor(Color(228,228,228,255))
				surface.DrawRect(pos.x-(uiWidth/2), pos.y + 25, uiWidth/100*math.Clamp(ply:Armor(),0,100), 4)
			end
        end
 
    if GAMEMODE.Config.showjob then
        local teamname = ply:getDarkRPVar("job") or team.GetName(ply:Team())
        draw.DrawNonParsedText(teamname, "DarkRPHUD2", pos.x + 1, pos.y + 41, colors.black, 1)
        draw.DrawNonParsedText(teamname, "DarkRPHUD2", pos.x, pos.y + 40, colors.white1, 1)
    end
 
	if ply:getDarkRPVar("HasGunlicense") then
		surface.SetMaterial(Page)
		surface.SetDrawColor(255,255,255,255)
		surface.DrawTexturedRect(pos.x + 55, pos.y + 25, 22, 22)
	end
end
 
plyMeta.drawWantedInfo = plyMeta.drawWantedInfo or function(self)
	if not self:Alive() then return end

	local pos = self:EyePos()
	if not pos:isInSight({localplayer, self}) then return end

	pos.z = pos.z + 10
	pos = pos:ToScreen()

	if GAMEMODE.Config.showname then
		local nick, plyTeam = self:Nick(), self:Team()
		draw.DrawNonParsedText(nick, "DarkRPHUD2", pos.x + 1, pos.y + 1, colors.black, 1)
		draw.DrawNonParsedText(nick, "DarkRPHUD2", pos.x, pos.y, RPExtraTeams[plyTeam] and RPExtraTeams[plyTeam].color or team.GetColor(plyTeam) , 1)
	end

	local wantedText = DarkRP.getPhrase("wanted", tostring(self:getDarkRPVar("wantedReason")))

	draw.DrawNonParsedText(wantedText, "DarkRPHUD2", pos.x, pos.y - 40, colors.white1, 1)
	draw.DrawNonParsedText(wantedText, "DarkRPHUD2", pos.x + 1, pos.y - 41, colors.white1, 1)
end
 
/*---------------------------------------------------------------------------
The Entity display: draw HUD information about entities
---------------------------------------------------------------------------*/
local function DrawEntityDisplay()
    local shouldDraw, players = hook.Call("HUDShouldDraw", GAMEMODE, "DarkRP_EntityDisplay")
    if shouldDraw == false then return end

    local shootPos = localplayer:GetShootPos()
    local aimVec = localplayer:GetAimVector()

    for k, ply in pairs(players or player.GetAll()) do
        if ply == localplayer or not ply:Alive() or ply:GetNoDraw() then continue end
        local hisPos = ply:GetShootPos()
        if ply:getDarkRPVar("wanted") then ply:drawWantedInfo() end

        if GAMEMODE.Config.globalshow then
            ply:drawPlayerInfo()
        -- Draw when you're (almost) looking at him
        elseif hisPos:DistToSqr(shootPos) < 160000 then
            local pos = hisPos - shootPos
            local unitPos = pos:GetNormalized()
            if unitPos:Dot(aimVec) > 0.95 then
                local trace = util.QuickTrace(shootPos, pos, localplayer)
                if trace.Hit and trace.Entity ~= ply then break end
                DrawPlayerInfo(ply)
            end
        end
    end

    local tr = localplayer:GetEyeTrace()

    if IsValid(tr.Entity) and tr.Entity:isKeysOwnable() and tr.Entity:GetPos():DistToSqr(localplayer:GetPos()) < 40000 then
        tr.Entity:drawOwnableInfo()
    end
end

/*---------------------------------------------------------------------------
Drawing death notices
---------------------------------------------------------------------------*/
function GM:DrawDeathNotice(x, y)
	if not GAMEMODE.Config.showdeaths then return end
	self.BaseClass:DrawDeathNotice(x, y)
end

/*---------------------------------------------------------------------------
Display notifications
---------------------------------------------------------------------------*/
local function DisplayNotify(msg)
	local txt = msg:ReadString()
	GAMEMODE:AddNotify(txt, msg:ReadShort(), msg:ReadLong())
	surface.PlaySound("buttons/lightswitch2.wav")

	-- Log to client console
	print(txt)
end
usermessage.Hook("_Notify", DisplayNotify)

/*---------------------------------------------------------------------------
Remove some elements from the HUD in favour of the DarkRP HUD
---------------------------------------------------------------------------*/
function GM:HUDShouldDraw(name)
	if name == "CHudHealth" or
		name == "CHudBattery" or
		name == "CHudSuitPower" or
		(HelpToggled and name == "CHudChat") then
			return false
	else
		return true
	end
end

/*---------------------------------------------------------------------------
Disable players' names popping up when looking at them
---------------------------------------------------------------------------*/
function GM:HUDDrawTargetID()
    return false
end

/*---------------------------------------------------------------------------
Actual HUDPaint hook
---------------------------------------------------------------------------*/
function GM:HUDPaint()
	DrawHUD()
	DrawEntityDisplay()

	self.BaseClass:HUDPaint()
end
 
/*---------------------------------------------------------------------------
Actual HUDPaint hook
---------------------------------------------------------------------------*/
function GM:HUDPaint()
    localplayer = localplayer and IsValid(localplayer) and localplayer or LocalPlayer()
    if not IsValid(localplayer) then return end

    DrawHUD()
    DrawEntityDisplay()

    self.Sandbox.HUDPaint(self)
end
 
--Singularity Hud Start--
 
function TestDrawHud()
surface.SetFont("ChatFont")
local w,h=surface.GetTextSize("http://singularityservers.com.au/")
        draw.WordBox( 3, 0, 0, "Singularity DarkRP","ChatFont",Color(0,0,0,0),Color(255,255,255,105))
        draw.WordBox( 3, ScrW()-w, 0, "DarkRP Build - Update 00","DefaultFixed",Color(0,0,0,0),Color(255,255,255,105))
end
function DrawShitOver()
surface.SetFont("DefaultFixed")
local w,h=surface.GetTextSize("F1-Help | F3-Cursor | F4-RP Menu")
draw.WordBox( 4, (ScrW() / 2)-(w/2), 0, "F1-Help | F3-Cursor | F4-RP Menu", "DefaultFixed", Color(0,0,0,150), Color(255,255,255,200) )
 end
 
 
--HUD END--