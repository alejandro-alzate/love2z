local value = {
	name = 'ByteData',
	description =
	'Data object containing arbitrary bytes in an contiguous memory.\n\nThere are currently no LÖVE functions provided for manipulating the contents of a ByteData, but Data:getPointer can be used with LuaJIT\'s FFI to access and write to the contents directly.',
	constructors = {
		'newByteData',
	},
	supertypes = {
		'Object',
		'Data',
	},
	functions = {
	},
}

local name = value.name

local template = "\n--- @class %s"
local className = string.format(template, name)
if type(value.supertypes) == "table" then
	for supertypeindex, supertypename in ipairs(value.supertypes) do
		-- The alledged perfomant code
		-- 45 Ops
		-- className =
		-- 	(supertypeindex == 1)
		-- 	and
		-- 	className .. ": " .. supertypename
		-- 	or
		-- 	className .. ", " .. supertypename

		-- 44 Ops
		-- The readable code
		if supertypeindex == 1 then
			className = className .. ": " .. supertypename
		else
			className = className .. ", " .. supertypename
		end
	end
end
