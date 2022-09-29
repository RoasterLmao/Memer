--[[
(READ ME!) This has nothing involved with logging your IP Adress, we do not want to use your IP adress to get it flooded in our discord server. I didn't use https://v4.ident.me/ or anything like that. Nothing was skidded too. G'day!
LOOKING FOR TRANSLATORS! LANGUAGES: Spain, German, Indonesian, etc.
ADD ME (discord): zestycodes#4818
ADD ME (guilded): https://guilded.gg/profile/4orNzGJA
PRIZE: Memer Hub Premium (COMMANDS FOR NONPREMIUM, MORE FEATURES)
Translations may not be correct.
Feel free to use this for your hub.
]]
local Country = string.upper(game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)) or "EN"

local Words = {
	["PL"] = {
		["Welcome"] = "Witaj",
		["welcome"] = "wit;aj",
		["Speed"] = "Prędkość",
		["speed"] = "prędkość",
		["high"] = "wielki",
		["tall"] = "długi",
		["hack"] = "hak",
		["hacker"] = "haker",
		["bullying"] = "nękanie",
		["bully"] = "dokucz",
		["cry"] = "płacz",
		["friend"] = "przyjaciel",
		["Bullying"] = "Nękanie",
		["Bully"] = "Nękacz",
		["Tall"] = "Długi",
		["punch"] = "uderz",
		["Punch"] = "Uderz",
		["you"] = "ty",
		["You"] = "Ty",
		["are"] = "jesteś",
		["Are"] = "jesteś",
		["they"] = "oni",
		["They"] = "Oni",
		["kill"] = "zabić",
		["Kill"] = "Zabić",
		["bro"] = "bracie",
		["Bro"] = "Bracie",
		["cash"] = "hajs",
		["Cash"] = "Hajs",
		["want"] = "chce",
		["Want"] = "Chce",
		["shy"] = "nieśmiały",
		["Shy"] = "Nieśmiały",
		["dude"] = "koleś",
		["Dude"] = "Koleś",
		["and"] = "i",
		["And"] = "I",
		["if"] = "jeśli",
		["If"] = "Jeśli",
		["cool"] = "fajny",
		["Cool"] = "Fajny",
		["gas"] = "gaz",
		["Gas"] = "Gaz",
		["gun"] = "pistolet",
		["Gun"] = "Pistolet",
		["stomp"] = "stupać",
		["Stomp"] = "Stupać",
		["school"] = "szkoła",
		["School"] = "Szkoła",
		["chair"] = "krzesło",
		["Chair"] = "Krzesło",
		["local"] = "lokalny",
		["Local"] = "Lokalny",
		["best"] = "najlepszy",
		["Best"] = "Najlepszy",
		["gaming"] = "gejming",
		["Gaming"] = "Gejming",
		["buy"] = "kup",
		["Buy"] = "Kup",
		["teleport"] = "teleportuj",
		["tp"] = "teleportuj",
		["Teleport"] = "Teleportuj",
		["Tp"] = "Teleportuj",
		["memerhub"] = "hub memera",
		["MemerHub"] = "Hub Memera",
		["MEMERHUB"] = "HUB MEMERA",
		["top"] = "szczyt",
		["Top"] = "Szczyt",
		["gay"] = "gej",
		["Gay"] = "Gej",
		["Gey"] = "Gej",
		["gey"] = "gej",
		["bed"] = "łóżko",
		["Bed"] = "łóżko",
		["script"] = "skrypt",
		["Script"] = "Skrypt",
		["love"] = "kocham",
		["Love"] = "Kocham",
		["LOVE"] = "KOCHAM",
		["bet"] = "zakład",
		["Bet"] = "Zakład",
		["mask"] = "maska",
		["Maska"] = "Maska",
		["eat"] = "jedz",
		["Eat"] = "Jedz",
		["food"] = "jedzenie",
		["Food"] = "Jedzenie",
		["santa"] = "mikołaj",
		["Santa"] = "Mikołaj",
		["house"] = "house",
		["House"] = "House",
		["lovely"] = "kochany",
		["Lovely"] = "Kochany",
		["here"] = "tutaj",
		["Here"] = "Tutaj",
		["sign"] = "tabliczka",
		["Sign"] = "Tabliczka",
		["woman"] = "dziewczyna",
		["Woman"] = "Dziewczyna",
		["Women"] = "Dziewczyny",
		["women"] = "dziewczyny",
		["girls"] = "dziewczyny",
		["Girls"] = "Dziewczyny",
		["girl"] = "dziewczyna",
		["Girl"] = "Dziewczyna",
		["man"] = "chłop",
		["Man"] = "Chłop",
		["boy"] = "chłopak",
		["Boy"] = "Chłopak",
		["good"] = "dobry",
		["Good"] = "Dobry",
		["sweet"] = "kochane",
		["Sweet"] = "Kochane",
		["russia"] = "rosja",
		["Russia"] = "Rosja",
		["poland"] = "polska",
		["Poland"] = "Poland",
		["Ukraine"] = "Ukrainy",
		["ukraine"] = "ukrainy",
		["china"] = "chiny",
		["China"] = "Chiny",
		["shield"] = "tarcza",
		["Shield"] = "Tarcza",
		["map"] = "mapa",
		["Map"] = "Mapa",
		["for"] = "dla",
		["For"] = "Dla",
		["sit"] = "siedź", 
		["Sit"] = "siedź",
		["$"] = "euro",
		["stomping"] = "stopać",
		["people"] = "ludzi",
		["People"] = "Ludzi",
		["is"] = "jest",
		["Is"] = "Jest",
		["grab"] = "bierz",
		["Grab"] = "Bierz",
		["i"] = "ja",
		["I"] = "Ja",
		["this"] = "ten",
		["This"] = "Ten",
	},
	--[[
	-- ["EN"] = {}
	Honestly, EN shouldn't be added because these translations check if the language exists and if it doesn't, this script will return non-translated content.
	Yes, I am lazy to write it all.
	]]
}

Words["Translate"] = function(message)
	local result = nil
	local success = false
	
	if Words[Country] then
		for toTranslate, Result in pairs(Words[Country]) do
			if message:find(toTranslate) then
				message = string.gsub(message, toTranslate, Result)
			end
		end
		result = message --[[Return translated content because on top the message already got translated]]
	else
		result = message
	end
	
	return result, success
end
return Words
