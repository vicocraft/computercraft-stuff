-- +--------------------------------------------------------+
-- |                                                        |
-- |                        BanEdit                         |
-- |                                                        |
-- +--------------------------------------------------------+

local version = "Version 1.0.0"

-- By Jeffrey Alexander, aka Bomb Bloke.
-- Command Computer script for the purpose of editing banners.
-- http://www.computercraft.info/forums2/index.php?/topic/26391-mc18-banner-editor/

---------------------------------------------
------------Variable Declarations------------
---------------------------------------------

if not blittle then
	if not (fs.exists("blittle") or fs.exists(shell.resolve("blittle"))) then
		shell.run("pastebin get ujchRSnU blittle")
		os.loadAPI(shell.resolve("blittle"))
	else os.loadAPI(fs.exists("blittle") and "blittle" or shell.resolve("blittle")) end
end

local xSize, ySize, myEvent
local x, y, z = commands.getBlockPosition()
local patternLookup, colourNum, colourChar, layers, bg = {}, {}, {}, {}, colours.white
local win = blittle.createWindow(term.current(), 40, 3, 10, 13, false)
local cursor = {{">>  ","  <<"},{"> > "," < <"},{" >> "," << "},{"> > "," < <"}}

local patterns = {
	{"--------------------------", "-",   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Base Fess",                  "bs",  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575}},
	{"Chief Fess",                 "ts",  {1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Pale Dexter",                "ls",  {127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127}},
	{"Pale Sinister",              "rs",  {1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384, 1040384}},
	{"Pale",                       "cs",  {8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064, 8064}},
	{"Fess",                       "ms",  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Bend",                       "drs", {15, 15, 31, 31, 63, 63, 127, 127, 254, 254, 508, 508, 1016, 1016, 2032, 2032, 4064, 4064, 8128, 8128, 16256, 16256, 32512, 32512, 65024, 65024, 130048, 130048, 260096, 260096, 520192, 520192, 1040384, 1040384, 1032192, 1032192, 1015808, 1015808, 983040}},
	{"Bend Sinister",              "dls", {983040, 983040, 1015808, 1015808, 1032192, 1032192, 1040384, 1040384, 520192, 520192, 260096, 260096, 130048, 130048, 65024, 65024, 32512, 32512, 16256, 16256, 8128, 8128, 4064, 4064, 2032, 2032, 1016, 1016, 508, 508, 254, 254, 127, 127, 63, 63, 31, 31, 15}},
	{"Paly",                       "ss",  {473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550, 473550}},
	{"Saltire",                    "cr",  {917511, 917511, 983055, 983055, 1015839, 1015839, 507966, 507966, 254076, 254076, 127224, 127224, 63984, 63984, 32736, 32736, 16320, 16320, 8064, 8064, 8064, 8064, 16320, 16320, 32736, 32736, 63984, 63984, 127224, 127224, 254076, 254076, 507966, 507966, 1015839, 1015839, 983055, 983055, 917511}},
	{"Cross",                      "sc",  {3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 1048575, 1048575, 1048575, 1048575, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840, 3840}},
	{"Per Bend Sinister",          "ld",  {1048575, 1048575, 524287, 524287, 262143, 262143, 131071, 131071, 65535, 65535, 32767, 32767, 16383, 16383, 8191, 8191, 4095, 4095, 2047, 2047, 1023, 1023, 511, 511, 255, 255, 127, 127, 63, 63, 31, 31, 15, 15, 7, 7, 3, 3, 1}},
	{"Per Bend",                   "rud", {1048575, 1048575, 1048574, 1048574, 1048572, 1048572, 1048568, 1048568, 1048560, 1048560, 1048544, 1048544, 1048512, 1048512, 1048448, 1048448, 1048320, 1048320, 1048064, 1048064, 1047552, 1047552, 1046528, 1046528, 1044480, 1044480, 1040384, 1040384, 1032192, 1032192, 1015808, 1015808, 983040, 983040, 917504, 917504, 786432, 786432, 524288}},
	{"Per Bend Inverted",          "lud", {1, 1, 3, 3, 7, 7, 15, 15, 31, 31, 63, 63, 127, 127, 255, 255, 511, 511, 1023, 1023, 2047, 2047, 4095, 4095, 8191, 8191, 16383, 16383, 32767, 32767, 65535, 65535, 131071, 131071, 262143, 262143, 524287, 524287, 1048575}},
	{"Per Bend Sinister Inverted", "rd",  {524288, 524288, 786432, 786432, 917504, 917504, 983040, 983040, 1015808, 1015808, 1032192, 1032192, 1040384, 1040384, 1044480, 1044480, 1046528, 1046528, 1047552, 1047552, 1048064, 1048064, 1048320, 1048320, 1048448, 1048448, 1048512, 1048512, 1048544, 1048544, 1048560, 1048560, 1048568, 1048568, 1048572, 1048572, 1048574, 1048574, 1048575}},
	{"Per Pale",                   "vh",  {2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047, 2047}},
	{"Per Pale Inverted",          "vhr", {1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064, 1048064}},
	{"Per Fess",                   "hh",  {1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Per Fess Inverted",          "hhb", {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575, 1048575}},
	{"Base Dexter Canton",         "bl",  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023}},
	{"Base Sinister Canton",       "br",  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552}},
	{"Chief Dexter Canton",        "tl",  {1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Chief Sinister Canton",      "tr",  {1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 1047552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Chevron",                    "bt",  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1536, 3840, 3840, 8064, 8064, 16320, 16320, 32736, 32736, 65520, 65520, 131064, 131064, 262140, 262140, 524286, 524286, 1048575, 1048575}},
	{"Inverted Chevron",           "tt",  {1048575, 1048575, 1048575, 524286, 524286, 262140, 262140, 131064, 131064, 65520, 65520, 32736, 32736, 16320, 16320, 8064, 8064, 3840, 3840, 1536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Base Indented",              "bts", {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198156, 495390, 495390, 1040319, 1040319, 1048575}},
	{"Chief Indented",             "tts", {1048575, 1048575, 1040319, 1040319, 495390, 495390, 198156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Roundel",                    "mc",  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1536, 8064, 16320, 32736, 32736, 65520, 65520, 32736, 32736, 16320, 8064, 1536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Lozenge",                    "mr",  {0, 0, 0, 0, 0, 0, 0, 0, 1536, 3840, 3840, 8064, 8064, 16320, 16320, 32736, 32736, 65520, 65520, 131064, 131064, 65520, 65520, 32736, 32736, 16320, 16320, 8064, 8064, 3840, 3840, 1536, 0, 0, 0, 0, 0, 0, 0}},
	{"Bordure",                    "bo",  {1048575, 1048575, 1048575, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 917511, 1048575, 1048575}},
	{"Bordure Indented",           "cbo", {1048575, 1047039, 1040511, 1040511, 1032255, 1015839, 983055, 786435, 786435, 524289, 524289, 786435, 786435, 983055, 1015839, 1015839, 983055, 786435, 786435, 524289, 524289, 786435, 786435, 983055, 1015839, 1015839, 983055, 786435, 786435, 524289, 524289, 786435, 786435, 983055, 1015839, 1032255, 1040511, 1040511, 1047039}},
	{"Field Masoned",              "bri", {915423, 915423, 915423, 0, 1031931, 1031931, 1031931, 0, 915423, 915423, 915423, 0, 1031931, 1031931, 1031931, 0, 915423, 915423, 915423, 0, 1031931, 1031931, 1031931, 0, 915423, 915423, 915423, 0, 1031931, 1031931, 1031931, 0, 915423, 915423, 915423, 0, 1031931, 1031931, 1031931}},
	{"Gradient",                   "gra", {1048575, 1048575, 489335, 1048575, 1040351, 1048575, 489335, 1048575, 349525, 1048575, 349525, 1048575, 349525, 768955, 349525, 978670, 349525, 768955, 349525, 699050, 349525, 666154, 349525, 699050, 349525, 139810, 349525, 526344, 349525, 131586, 349525, 0, 349525, 0, 69905, 0, 263172, 0, 69905}},
	{"Base Gradient",              "gru", {0, 0, 69905, 0, 345157, 0, 69905, 0, 349525, 0, 349525, 0, 349525, 139810, 349525, 567466, 349525, 139810, 349525, 699050, 349525, 764859, 349525, 978670, 349525, 768955, 349525, 1048575, 349525, 1048575, 481111, 1048575, 349525, 1048575, 489335, 1048575, 1040351, 1048575, 1015679}},
	{"Creeper Charge",             "cre", {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 516222, 516222, 516222, 516222, 516222, 516222, 8064, 8064, 8064, 65520, 65520, 65520, 65520, 65520, 65520, 57456, 57456, 57456, 0, 0, 0, 0, 0, 0, 0}},
	{"Skull Charge",               "sku", {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16320, 16320, 16320, 16320, 9792, 14784, 8256, 16320, 196620, 229404, 254076, 31200, 8064, 16320, 258300, 245820, 196620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Flower Charge",              "flo", {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1536, 53040, 126840, 65520, 196596, 516222, 511806, 253884, 57264, 57264, 253884, 511806, 516222, 196596, 65520, 126840, 53040, 1536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
	{"Mojang Charge",              "moj", {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16384, 49152, 49632, 54264, 16380, 131068, 123004, 114748, 229436, 196668, 65596, 60, 124, 252, 197628, 262136, 65504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}}

---------------------------------------------
------------Function Declarations------------
---------------------------------------------

-- Returns whether a click was performed at a given location.
-- If one parameter is passed, it checks to see if y is [1].
-- If two parameters are passed, it checks to see if x is [1] and y is [2].
-- If three parameters are passed, it checks to see if x is between [1]/[2] (non-inclusive) and y is [3].
-- If four paramaters are passed, it checks to see if x is between [1]/[2] and y is between [3]/[4] (non-inclusive).
local function clickedAt(...)
	if myEvent[1] ~= "mouse_click" then return false end
	if #arg == 1 then return (arg[1] == myEvent[4])
	elseif #arg == 2 then return (myEvent[3] == arg[1] and myEvent[4] == arg[2])
	elseif #arg == 3 then return (myEvent[3] > arg[1] and myEvent[3] < arg[2] and myEvent[4] == arg[3])
	else return (myEvent[3] > arg[1] and myEvent[3] < arg[2] and myEvent[4] > arg[3] and myEvent[4] < arg[4]) end
end

-- Returns whether one of a given set of keys was pressed.
local function pressedKey(...)
	if myEvent[1] ~= "key" then return false end
	for i=1,#arg do if arg[i] == myEvent[2] then return true end end
	return false
end

-- Not feature-complete, but should work within the confines of this particular script.
local function unserialiseJSON(json)
	local i = 1
	
	while true do
		local curChar = json:sub(i, i)
		i = i + 1
		
		if curChar == "{" then
			-- Map (Compound).
			local key, result, counter = {}, {}, 1
			
			repeat
				curChar = json:sub(i, i)
				i = i + 1
				
				if curChar == ":" then
					result[table.concat(key)], json = unserialiseJSON(json:sub(i))
					key, counter, i = {}, 1, 1
				elseif curChar ~= "," then
					key[counter] = curChar
					counter = counter + 1
				end
			until curChar == "}"
			
			return result, json:sub(i)
		elseif curChar == "[" then
			-- Array (List).
			local result, counter = {}, 1
			
			repeat
				curChar = json:sub(i, i)
				i = i + 1
				
				if curChar == ":" then
					result[counter], json = unserialiseJSON(json:sub(i))
					counter, i = counter + 1, 1
				end	
			until curChar == "]"
			
			return result, json:sub(i)
		elseif curChar == "\"" then
			-- String.
			local result, counter = {curChar}, 2
			
			repeat
				curChar = json:sub(i, i)
				i = i + 1
				
				if curChar == "\\" then
					curChar = curChar .. json:sub(i, i)
					i = i + 1
				end
				
				result[counter] = curChar
				counter = counter + 1
			until curChar == "\""
			
			return textutils.unserialise(table.concat(result)), json:sub(i)
		else
			-- Number.
			local result, counter = {curChar}, 2
			
			repeat
				curChar = json:sub(i, i)
				result[counter] = curChar
				i, counter = i + 1, counter + 1
			until curChar == "," or curChar == "}" or curChar == "]"
			
			repeat result[#result] = nil until tonumber(result[#result])
			
			return tonumber(table.concat(result)), json:sub(i - 1)
		end
	end
end

local function getNBT(...)
	for i = 1, #arg do arg[i] = tostring(arg[i]) end
	arg = table.concat(arg, " ")
	
	local _, input = commands.blockdata(arg .. " {}")
	return unserialiseJSON(input[1]:sub(30))
end

local function drawPattern(thisPattern)
	local thisLayer, thisChar = patterns[thisPattern[1]][3], colourChar[thisPattern[2]]
	
	for y = 1, 39 do
		local x, ystart, imageY = 1, 1, thisLayer[y]
		for i = 1, #imageY do
			local imageYI = imageY[i]
			if type(imageYI) == "number" then
				x = x + imageYI
			else
				term.setCursorPos(x, y)
				term.blit(imageYI, imageYI, string.rep(thisChar, #imageYI))
				x = x + #imageYI
			end
		end
	end
end

local function drawBanner(startLayer)
	local oldTerm = term.redirect(win)
	
	if startLayer == 1 then
		term.setBackgroundColour(bg)
		term.clear()
	end
	
	for pattern = startLayer, 16 do
		local thisLayer = layers[pattern]
		if thisLayer[1] ~= 1 then drawPattern(thisLayer) end
	end
	
	win.setVisible(true)
	win.setVisible(false)
	term.redirect(oldTerm)
end

local function drawPickerPattern(position, listWin)
	term.redirect(win)
	term.setBackgroundColour(colours.white)
	term.clear()
	drawPattern({position, colours.black})
	win.setVisible(true)
	win.setVisible(false)
	term.redirect(listWin)
end

local function patternPicker(position)
	term.setBackgroundColour(colours.black)
	term.clear()
	
	term.setTextColour(colours.cyan)
	term.setBackgroundColour(colours.brown)
	
	term.setCursorPos(39, 2)
	term.write("\159" .. string.rep("\143", 10))
	term.blit("\144", "c", "9")
	
	term.setTextColour(colours.brown)
	term.setBackgroundColour(colours.cyan)
	
	term.setCursorPos(39, 16)
	term.write("\130" .. string.rep("\131", 10))
	term.blit("\129", "c", "9")
	
	for y = 3, 15 do
		term.setCursorPos(39, y)
		term.blit("\149", "9", "c")
		
		term.setCursorPos(50, y)
		term.blit("\149", "c", "9")
	end
	
	local oldTerm = term.current()
	local listWin = window.create(oldTerm, 1, 1, 37, 19)
	
	drawPickerPattern(position, listWin)
	
	local xSize, ySize = term.getSize()
	local lastPosition, animationTimer, curCount = 0, os.startTimer(0), 1

	while true do
		myEvent = {os.pullEvent()}

		-- Track bouncing cursor.
		if myEvent[1] == "timer" and myEvent[2] == animationTimer then
			curCount = curCount == 4 and 1 or (curCount + 1)
			animationTimer = os.startTimer(0.5)
			myEvent[1] = "cabbage"

		-- Bail.
		elseif pressedKey(keys.backspace) or (myEvent[1] == "mouse_click" and myEvent[2] == 2) then
			term.redirect(oldTerm)
			return 1

		-- Move down the list.
		elseif pressedKey(keys.down, keys.s) or (myEvent[1] == "mouse_scroll" and myEvent[2] == 1) then
			position = position == #patterns and 1 or (position + 1)
			drawPickerPattern(position, listWin)

		-- Move up the list.
		elseif pressedKey(keys.up, keys.w) or (myEvent[1] == "mouse_scroll" and myEvent[2] == -1) then
			position = position == 1 and #patterns or (position - 1)
			drawPickerPattern(position, listWin)

		-- Select something.
		elseif pressedKey(keys.enter, keys.space) or clickedAt(0, xSize + 1, math.floor(ySize / 2) + 1) then
			term.redirect(oldTerm)
			return position

		-- User clicked somewhere on the list; move that entry to the currently-selected position.
		elseif clickedAt(0, xSize + 1, 0, ySize + 1) then
			position = position + myEvent[4] - math.floor(ySize / 2) - 1
			position = position > #patterns and #patterns or position
			position = position < 1 and 1 or position
			drawPickerPattern(position, listWin)
		end

		-- Update other screen stuff.
		if myEvent[1] ~= "timer" then
			-- File list.
			term.setBackgroundColour(colours.black)
			for y = position == lastPosition and (math.floor(ySize / 2) + 1) or 1, position == lastPosition and (math.floor(ySize / 2) + 1) or ySize do
				local thisLine = y + position - math.floor(ySize / 2) - 1

				if patterns[thisLine] then
					local thisString = patterns[thisLine][1]
					
					if thisLine == position then
						term.setCursorPos(math.floor((xSize - #thisString - 8) / 2) + 1, y)
						term.clearLine()
						term.setTextColour(colours.blue)
						term.write(cursor[curCount][1])
						term.setTextColour(colours.cyan)
						term.write(thisString)
						term.setTextColour(colours.blue)
						term.write(cursor[curCount][2])
					else
						term.setCursorPos(math.floor((xSize - #thisString) / 2) + 1, y)
						term.clearLine()

						if y == 1 or y == ySize then term.setTextColour(colours.grey)
						elseif y == 2 or y == ySize - 1 then term.setTextColour(colours.lightGrey)
						else term.setTextColour(colours.white) end

						term.write(thisString)
					end
				else
					term.setCursorPos(1, y)
					term.clearLine()
				end
			end

			lastPosition = position
		end
	end
end

local function colourPicker(oldCol)
	term.setTextColour(colours.purple)
	term.setBackgroundColour(colours.cyan)
	
	term.setCursorPos(16, 3)
	term.write("\159" .. string.rep("\143", 16))
	term.blit("\144", "9", "a")
	
	for y = 4, 15 do
		term.setCursorPos(16, y)
		term.blit("\149", "a", "9")
		
		term.setCursorPos(33, y)
		term.blit("\149", "9", "a")
	end

	term.setTextColour(colours.cyan)
	term.setBackgroundColour(colours.purple)

	term.setCursorPos(16, 16)
	term.write("\130" .. string.rep("\131", 16))
	term.blit("\129", "9", "a")
	
	local thisCol = 1
	for y = 0, 3 do for x = 0, 3 do
		paintutils.drawFilledBox(17 + x * 4, 4 + y * 3, 20 + x * 4, 6 + y * 3, thisCol) 
		thisCol = thisCol * 2
	end end
	
	while true do
		myEvent = {os.pullEvent("mouse_click")}
		if myEvent[2] == 2 then return oldCol end
		if clickedAt(16, 33, 3, 16) then return 2 ^ (math.floor((myEvent[4] - 4) / 3) * 4 + math.floor((myEvent[3] - 17) / 4)) end
	end
end

local function labelLayer(layer)
	local thisLayer = layers[layer]

	term.setCursorPos(3, 2 + layer)
	term.setTextColour(thisLayer[2])
	term.setBackgroundColour(layer % 2 == 1 and colours.lightGrey or colours.grey)
	term.write("\136\140\140\132")
	
	term.setTextColour(colours.black)
	term.write("                           " .. (layer > 1 and "\30" or " ") .. (layer < 16 and "\31" or " ") .. " ")

	thisLayer = patterns[thisLayer[1]][1]
	term.setCursorPos(math.floor((26 - #thisLayer) / 2) + 7, 2 + layer)
	term.write(thisLayer)
end

local function drawScreen()
	local line = string.rep("\127", xSize)
	term.setTextColour(colours.lightBlue)
	term.setBackgroundColour(colours.blue)

	for y = 1, ySize do
		term.setCursorPos(1, y)
		term.write(line)
	end
	
	term.setTextColour(colours.cyan)
	term.setBackgroundColour(colours.brown)
	
	term.setCursorPos(2, 2)
	term.write("\159" .. string.rep("\143", 34))
	term.blit("\144", "c", "9")
	
	term.setCursorPos(39, 2)
	term.write("\159" .. string.rep("\143", 10))
	term.blit("\144", "c", "9")
	
	term.setTextColour(colours.brown)
	term.setBackgroundColour(colours.cyan)
	
	term.setCursorPos(2, 19)
	term.write("\130" .. string.rep("\131", 34))
	term.blit("\129", "c", "9")
	
	term.setCursorPos(39, 16)
	term.write("\130" .. string.rep("\131", 10))
	term.blit("\129", "c", "9")
	
	for y = 3, 18 do
		term.setCursorPos(2, y)
		term.blit("\149", "9", "c")
		
		term.setCursorPos(37, y)
		term.blit("\149", "c", "9")
	end
	
	for y = 3, 15 do
		term.setCursorPos(39, y)
		term.blit("\149", "9", "c")
		
		term.setCursorPos(50, y)
		term.blit("\149", "c", "9")
	end
	
	for y = 1, 16 do labelLayer(y) end
	
	term.setBackgroundColour(colours.lightGrey)
	term.setCursorPos(12, 1)
	term.write(" Banner Editor ")
	
	term.setCursorPos(43, 1)
	term.setTextColour(bg)
	term.setBackgroundColour(colours.grey)
	term.write("\136\140\140\132")
	
	term.setTextColour(colours.white)
	term.setCursorPos(41, 17)
	term.write(" Reset  ")
	term.setCursorPos(41, 18)
	term.write(" Import ")
	term.setCursorPos(41, 19)
	term.write(" Export ")

	drawBanner(1)
end

---------------------------------------------
------------         Init        ------------
---------------------------------------------

if not commands then error("A Command Computer is required.") end

if not _HOST then error("Minecraft 1.8 or later is required.") end

if term.current().setTextScale then
	local curScale = 5
	
	repeat
		term.current().setTextScale(curScale)
		xSize, ySize = term.getSize()
		if xSize > 49 and ySize > 18 then break end
		curScale = curScale - 0.5
	until curScale == 0
	
	if curScale == 0 then error("A larger display is required.") end
else xSize, ySize = term.getSize() end

do
	local hex = "0123456789abcdef"

	for i = 1, 16 do
		layers[i] = {1, colours.black}
		colourChar[2^(i-1)] = hex:sub(i, i)
		colourNum[2^(i-1)] = 16 - i
	end
end

for i = 2, 39 do patternLookup[patterns[i][2]] = i end

for i = 1, #patterns do
	local thisPattern = patterns[i][3]
	
	for y = 1, 39 do
		local temp, exp, row, chars, skip = {}, 0, thisPattern[y], 0, 0
		
		for x = 1, 20 do
			local pow = 2 ^ exp
			exp = exp + 1
			
			if bit.band(pow, row) == pow then
				chars = chars + 1
				if skip > 0 then
					temp[#temp + 1] = skip
					skip = 0
				end
			else
				skip = skip + 1
				if chars > 0 then
					temp[#temp + 1] = string.rep(" ", chars)
					chars = 0
				end
			end
		end
		
		if chars > 0 then temp[#temp + 1] = string.rep(" ", chars) end
		
		thisPattern[y] = temp
	end
end

drawScreen()

---------------------------------------------
------------  Main Program Loop  ------------
---------------------------------------------

while true do
	myEvent = {os.pullEvent()}
	
	if clickedAt(33 , 36, 2, 19) then
		-- Reorder layers.
		
		local layerNum = myEvent[4] - 2
		
		if myEvent[3] == 34 and layerNum > 1 then
			-- Move layer up.
			local temp = layers[layerNum]
			layers[layerNum] = layers[layerNum - 1]
			layers[layerNum - 1] = temp

			labelLayer(layerNum - 1)
			labelLayer(layerNum)
			drawBanner(layerNum - 1)

		elseif myEvent[3] == 35 and layerNum < 16 then
			-- Move layer down.
			local temp = layers[layerNum]
			layers[layerNum] = layers[layerNum + 1]
			layers[layerNum + 1] = temp

			labelLayer(layerNum)
			labelLayer(layerNum + 1)
			drawBanner(layerNum)
		end
		
	elseif clickedAt(42, 47, 1) then
		-- Set background colour.
		
		bg = colourPicker(bg)
		drawScreen()
		
	elseif clickedAt(2, 7, 2, 19) then
		-- Set layer colour.
		
		local thisLayer = myEvent[4] - 2
		layers[thisLayer][2] = colourPicker(layers[thisLayer][2])
		drawScreen()
		
	elseif clickedAt(6, 33, 2, 19) then
		-- Set layer pattern.
		
		local thisLayer = myEvent[4] - 2
		layers[thisLayer][1] = patternPicker(layers[thisLayer][1])
		drawScreen()
		
	elseif clickedAt(40, 49, 17) then
		-- Reset.
		
		bg = colours.white
		for i = 1, 16 do layers[i] = {1, colours.black} end
		drawScreen()
		
	elseif clickedAt(40, 49, 18) then
		-- Import.
		
		if commands.getBlockInfo(x, y + 1, z).name == "minecraft:chest" then
			local nbt = getNBT("~ ~1 ~").Items

			for i = 1, #nbt do
				local thisItem = nbt[i]

				if thisItem.id == "minecraft:banner" then
					bg = 2 ^ (15 - thisItem.Damage)
					
					thisItem = thisItem.tag
					
					if thisItem then
						thisItem = thisItem.BlockEntityTag.Patterns
						
						for i = 1, #thisItem do
							local thisLayer = thisItem[i]
							layers[i] = {patternLookup[thisLayer.Pattern], 2 ^ (15 - thisLayer.Color)}
						end
						
						for i = #thisItem + 1, 16 do layers[i] = {1, colours.black} end
					end
					
					drawScreen()
					break
				end
			end
		end
		
	elseif clickedAt(40, 49, 19) then
		-- Export.
		
		if commands.getBlockInfo(x, y + 1, z).name == "minecraft:chest" then
			local tag = {}
			
			for i = 1, 16 do
				local thisLayer = layers[i]
				local thisPattern = thisLayer[1]
				if thisPattern ~= 1 then tag[#tag + 1] = {["Pattern"] = patterns[thisPattern][2], ["Color"] = colourNum[thisLayer[2]]} end
			end
			
			local nbt = getNBT("~ ~1 ~")
			
			local items = nbt.Items
			
			for i = 1, #items do
				local thisItem = items[i]
				if thisItem.id == "minecraft:banner" then thisItem.Damage, thisItem.tag = colourNum[bg], "BBUniqueString" end
			end
			
			-- Workaround for CC's false recursion complaints:
			commands.blockdata("~ ~1 ~ " .. textutils.serialiseJSON(nbt, true):gsub("\"BBUniqueString\"", textutils.serialiseJSON({["BlockEntityTag"] = {["Patterns"] = tag, ["Base"] = colourNum[bg]}}, true)))
		end
		
	elseif pressedKey(keys.q, keys.x) then
		-- Quit.
		
		os.pullEvent("char")
		break
	end
end

term.setTextColour(colours.white)
term.setBackgroundColour(colours.black)
term.clear()
term.setCursorPos(1, 1)
print("Thanks for using Banner Editor!\n")