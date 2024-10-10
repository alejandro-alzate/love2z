local lfs = require("lfs")
local serpent = require("serpent")
local parser = require("parser")
local loveapi = require("love-api.love_api")
assert(lfs.currentdir():match("/tools"), "Make sure you started on the tools folder")

--print(serpent.block(loveapi))

local jobs = {
	-- Functions, prepend, append, path
	{ loveapi.functions,             "love",             "", "love.lua",            loveapi.enums },
	{ loveapi.modules[1].functions,  "love.audio.",      "", "love.audio.lua",      loveapi.modules[1].enums },
	{ loveapi.modules[2].functions,  "love.data.",       "", "love.data.lua",       loveapi.modules[2].enums },
	{ loveapi.modules[3].functions,  "love.event.",      "", "love.event.lua",      loveapi.modules[3].enums },
	{ loveapi.modules[4].functions,  "love.filesystem.", "", "love.filesystem.lua", loveapi.modules[4].enums },
	{ loveapi.modules[5].functions,  "love.font.",       "", "love.font.lua",       loveapi.modules[5].enums },
	{ loveapi.modules[6].functions,  "love.graphics.",   "", "love.graphics.lua",   loveapi.modules[6].enums },
	{ loveapi.modules[7].functions,  "love.image.",      "", "love.image.lua",      loveapi.modules[7].enums },
	{ loveapi.modules[8].functions,  "love.joystick.",   "", "love.joystick.lua",   loveapi.modules[8].enums },
	{ loveapi.modules[9].functions,  "love.keyboard.",   "", "love.keyboard.lua",   loveapi.modules[9].enums },
	{ loveapi.modules[10].functions, "love.math.",       "", "love.math.lua",       loveapi.modules[10].enums },
	{ loveapi.modules[11].functions, "love.mouse.",      "", "love.mouse.lua",      loveapi.modules[11].enums },
	{ loveapi.modules[12].functions, "love.physics.",    "", "love.physics.lua",    loveapi.modules[12].enums },
	{ loveapi.modules[13].functions, "love.sound.",      "", "love.sound.lua",      loveapi.modules[13].enums },
	{ loveapi.modules[14].functions, "love.system.",     "", "love.system.lua",     loveapi.modules[14].enums },
	{ loveapi.modules[15].functions, "love.thread.",     "", "love.thread.lua",     loveapi.modules[15].enums },
	{ loveapi.modules[16].functions, "love.timer.",      "", "love.timer.lua",      loveapi.modules[16].enums },
	{ loveapi.modules[17].functions, "love.touch.",      "", "love.touch.lua",      loveapi.modules[17].enums },
	{ loveapi.modules[18].functions, "love.video.",      "", "love.video.lua",      loveapi.modules[18].enums },
	{ loveapi.modules[19].functions, "love.window.",     "", "love.window.lua",     loveapi.modules[19].enums },
}

local outputPath = lfs.currentdir() .. "/tmp/"
print("Output directory:", outputPath)
for jobindex, job in ipairs(jobs) do
	local outputFile = outputPath .. job[4]
	print(job[2], "--->", outputFile)
	local declaration  = parser.generateDeclaration(job[2], true) .. "\n"
	local sketch       = "--- @meta\n\n"
	sketch             = sketch .. declaration
	sketch             = sketch .. parser.makeSketch({ functions = job[1], enums = job[5] }, job[2], job[3])
	local fhandle, err = io.open(outputFile, "w+")
	if not fhandle then
		print(err)
	else
		fhandle:write(sketch)
	end
end
