if _G.EntityRan then
	return warn("Entity Library is already ran dumbfuck")
end

_G.EntityRan = true

local lp = game.Players.LocalPlayer
local entity = {}
local realcharacter
local isalive
local characterloaded

realcharacter = lp.Character

entity["character"] = realcharacter
if entity["character"]["Humanoid"].Health >= 0 then
	isalive = true
else
	isalive = false
end

local loadedBodyParts = {}
characterloaded = false
if entity["character"]:FindFirstChild("Head") then
	table.insert(loadedBodyParts, "hed")
end

if entity["character"]:FindFirstChild("HumanoidRootPart") then
	table.insert(loadedBodyParts, "hrp")
end

if entity["character"]:FindFirstChild("HumanoidRootPart") then
	table.insert(loadedBodyParts, "hum")
end

entity["characterloaded"] = characterloaded

if table.find(loadedBodyParts, "hed") and table.find(loadedBodyParts, "hrp") and table.find(loadedBodyParts, "hum") then
	loadedBodyParts = nil -- cleanup
	entity["characterloaded"] = true
end

entity["is_alive"] = false

game:GetService("RunService").RenderStepped:Connect(function()
	if entity["character"] then
		local loadedBodyParts_1 = {}
		if entity["character"]:FindFirstChild("Head") then
			table.insert(loadedBodyParts_1, "hed")
		end

		if entity["character"]:FindFirstChild("HumanoidRootPart") then
			table.insert(loadedBodyParts_1, "hrp")
		end
		
		if table.find(loadedBodyParts_1, "hum") then
			if entity["character"]:FindFirstChildWhichIsA("Humanoid").Health >= 0 then
				entity["is_alive"] = true
			else
				entity["is_alive"] = false
			end
		end

		if table.find(loadedBodyParts_1, "hed") and table.find(loadedBodyParts_1, "hrp") and table.find(loadedBodyParts_1, "hum") then
			loadedBodyParts_1 = nil -- cleanup
			entity["characterloaded"] = true
		else
			loadedBodyParts_1 = nil -- cleanup
			entity["characterloaded"] = false
		end
	end
end)

return entity
