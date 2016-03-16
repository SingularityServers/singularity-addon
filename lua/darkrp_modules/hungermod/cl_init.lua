local cvars = cvars
local hook = hook
local math = math
local table = table
local timer = timer
local Color = Color
local ColorAlpha = ColorAlpha
local CreateClientConVar = CreateClientConVar
local GetConVar = GetConVar
local ipairs = ipairs
local pairs = pairs
local unpack = unpack

local ConVars = {
        HungerBackground = {0, 0, 0, 255},
        HungerForeground = {30, 30, 120, 255},
        HungerPercentageText = {255, 255, 255, 255},
        StarvingText = {200, 0, 0, 255},
        FoodEatenBackground = {0, 0, 0}, -- No alpha
        FoodEatenForeground = {20, 100, 20} -- No alpha
    }
local HUDWidth = 0

local FoodAteAlpha = -1
local FoodAteY = 0

surface.CreateFont("HungerPlus", {
    size = 70,
    weight = 500,
    antialias = true,
    shadow = false,
    font = "ChatFont"})

local function AteFoodIcon(msg)
    FoodAteAlpha = 1
    FoodAteY = ScrH() - 8
end
usermessage.Hook("AteFoodIcon", AteFoodIcon)
