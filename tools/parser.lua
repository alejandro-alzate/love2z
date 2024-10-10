--- Parser for the love api table.
local parser = {}

local aliases = {
	unknown       = "Unknown?",
	any           = "Any?",
	["nil"]       = "nil",
	boolean       = "true",
	["true"]      = "true",
	["false"]     = "false",
	number        = "0",
	integer       = "0",
	thread        = "coroutine.create(function()end)",
	table         = "{}",
	string        = "\"\"",
	userdata      = "{}",
	lightuserdata = "{}",
	["function"]  = "function() end"
}

local templates = {
	asteriskLine = "-- ************************************************************ --",
	sectionLine = "-- %s"
}

--- Generates a recursive declaration for the provided path.
--- @param path string The path to generate a declaration for.
--- @param is_local? boolean If true, the declaration will be marked as local.
--- @return string The generated declaration string.
function parser.generateDeclaration(path, is_local)
	local parts = {}
	local declaration = ""

	-- Separates the path on the dots
	for part in string.gmatch(path, "[^%.]+") do
		table.insert(parts, part)
	end

	-- this is a trap that triggers if the path is invalid.
	if #parts == 0 then
		return ""
	end

	-- if the path ends in dot this is removed
	if parts[#parts] == "" then
		table.remove(parts, #parts)
	end

	-- All of that whole nonsense to put it back together
	-- What I'm doing with my life honestly?
	local accumulator = ""
	for index, value in ipairs(parts) do
		accumulator = (index == 1) and value or accumulator .. "." .. value

		local addLocal = ((index == 1) and is_local) and "local " or ""
		local line = string.format("%s%s = {}\n", addLocal, accumulator)

		declaration = declaration .. line
	end

	return declaration
end

--- Takes the `returns` table and outputs the luals syntax as a string.
--- @param t table|nil The table `returns` to parse.
--- @return string result The result string.
function parser.returnParser(t)
	local result = ""

	if type(t) == "table" then
		local returnTable = {}
		for index, value in ipairs(t) do
			local valueType = value.type or "unknown"
			local name = value.name or "#"
			local desc = value.description or ""

			desc = desc:gsub("\n", "\n---|")

			local retString = string.format("--- @return %s %s %s", valueType, name, desc)
			table.insert(returnTable, retString)
		end

		for index, value in ipairs(returnTable) do
			if index == 1 then
				result = value
			else
				result = result .. "\n" .. value
			end
		end
	else
		result = "--- @return nil"
	end

	return result
end

--- Takes the `arguments` table and outputs the literal arguments inside the parenthesis as a string.
--- @param t table|nil The table `arguments` to parse.
--- @return string result The result string.
function parser.argumentlitParser(t)
	local result = ""

	if type(t) == "table" then
		local hasVarang = false
		for index, value in ipairs(t) do
			local name = value.name
			if name == "..." then
				hasVarang = true
			else
				result = (result == "") and name or (result .. ", " .. name)
			end
		end
		if hasVarang then result = result .. ", ..." end
	else
		result = ""
	end

	return result
end

--- Takes the `returns` table and outputs the literal return inside the function as a string.
--- @param t table|nil The table `returns` to parse.
--- @return string result The result string.
function parser.returnlitParser(t)
	local result = ""

	if type(t) == "table" then
		for index, value in ipairs(t) do
			local name = aliases[value.type] or value.type
			result = (result == "") and name or (result .. ", " .. name)
		end
	else
		result = ""
	end

	return result
end

--- Takes the `arguments` table and outputs the luals syntax as a string.
--- @param t table|nil The table `arguments` to parse.
--- @return string result The result string.
function parser.argumentlualsParser(t)
	local result = ""

	if type(t) == "table" then
		local argumentTable = {}
		for index, value in ipairs(t) do
			local name = value.name --or "#"
			local valueType = value.type --or "unknown"
			local desc = value.description --or ""

			desc = desc:gsub("\n", "\n---| ")

			local argString = string.format("--- @param %s %s %s", name, valueType, desc)
			table.insert(argumentTable, argString)
		end

		for index, value in ipairs(argumentTable) do
			if index == 1 then
				result = value
			else
				result = result .. "\n" .. value
			end
		end
	else
		result = ""
	end

	return result
end

--- Takes the `variants` table table and outputs the luals syntax as a table of strings.
--- @param t table The table `arguments` to parse.
--- @return table result The result table.
function parser.variantParser(t)
	local result = {}
	if type(t) == "table" then
		local diagFlag = #t > 1
		local variants = {}
		for index, value in ipairs(t) do
			local litargs = parser.argumentlitParser(value.arguments)
			local litrets = parser.returnlitParser(value.returns)
			local arguments = parser.argumentlualsParser(value.arguments) or ""
			local returns = parser.returnParser(value.returns) or ""
			local variantSrting = string.format(
				"%s%s%s",
				arguments .. (arguments ~= "" and "\n" or ""),
				returns, --.. (returns ~= "" and "\n" or ""),
				(diagFlag and "\n--- @diagnostic disable-next-line: duplicate-set-field" or "")
			)

			table.insert(variants, { variantSrting = variantSrting, litargs = litargs, litrets = litrets })
		end

		result = variants
	end
	return result
end

--- Takes the `functions` table table and outputs the luals syntax as a table of strings.
--- @param t table The table `functions` to parse.
--- @param funcnamePrepend? string String to put before the function name..
--- @param funcnameAppend? string String to put after the funtion name.
--- @return table result The result table.
function parser.functionParser(t, funcnamePrepend, funcnameAppend)
	local result = {}
	if type(t) == "table" then
		local funcs = {}
		for index, value in ipairs(t) do
			local fname = value.name or "undefinedFunctionName"
			local desc = value.description or "*No description provided*"
			local variants = parser.variantParser(value.variants)
			local ftemplate = "function %s%s%s(%s) return %s end"
			local literalfdef = ""
			local funcString = ""

			local pre = (type(funcnamePrepend) == "string") and funcnamePrepend or ""
			local app = (type(funcnameAppend) == "string") and funcnameAppend or ""

			desc = "--- " .. desc:gsub("\n", "\n--- ") .. "\n---"
			funcString = desc
			literalfdef = string.format(ftemplate, pre, fname, app, "%s", "%s")

			local literalargs = ""
			for varriantIndex, variantValue in ipairs(variants) do
				local variantSrting = variantValue.variantSrting
				local args = variantValue.litargs
				local rets = variantValue.litrets --== "" and "nil" or variantValue.litrets
				table.insert(result,
					funcString
					.. "\n"
					.. variantSrting
					.. "\n"
					.. string.format(literalfdef, args, rets)
				)
			end
		end
	end
	return result
end

--- Makes a section named `name` and puts the content on `content`.
--- @param name string The name of the section and header if not given on `headerName`.
--- @param content string The content of the section.
--- @param headerName? string The header name if not provided `name` will be used.
--- @return string section
function parser.makeSection(name, content, headerName)
	local section = ""
	section = section .. "--#region " .. name .. "\n"
	section = section .. (templates.asteriskLine or "") .. "\n"
	section = section .. (templates.asteriskLine or "") .. "\n"
	section = section .. "-- " .. (headerName or name) .. "\n"
	section = section .. (templates.asteriskLine or "") .. "\n"
	section = section .. (templates.asteriskLine or "") .. "\n"
	section = section .. "\n"
	section = section .. content
	section = section .. "\n"
	section = section .. "\n"
	section = section .. "--#endregion " .. name .. "\n"
	return section
end

--- Takes a table containing definitions for functions to produce a luals complaint sketch
--- @param t table The table `definitions` to parse.
--- @param funcnamePrepend? string String to put before the function name..
--- @param funcnameAppend? string String to put after the funtion name.
--- @return string sketch The luals string
function parser.makeSketch(t, funcnamePrepend, funcnameAppend)
	local sketch = ""

	-- -- Types
	-- local types = parser.typesParser(t.functions, "love.")
	-- local typesString = ""
	-- for index, value in ipairs(types) do
	-- 	typesString = typesString == "" and value or typesString .. "\n\n" .. value
	-- end
	-- sketch = sketch .. parser.makeSection("functions", typesString, "Functions")

	-- Functions
	local funcs = parser.functionParser(t.functions, funcnamePrepend, funcnameAppend)
	local funcsString = ""
	for index, value in ipairs(funcs) do
		funcsString = funcsString == "" and value or funcsString .. "\n\n" .. value
	end
	sketch = sketch .. parser.makeSection("functions", funcsString, "Functions")


	return sketch
end

return parser
