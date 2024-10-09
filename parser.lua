local parser = {}

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
		for index, value in ipairs(t) do
			local name = value.name
			local result = (result == "") and name or (", " .. name)
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
		local diagFlag = false -- #t > 1
		local variants = {}
		for index, value in ipairs(t) do
			local arguments = parser.argumentlualsParser(value.arguments) or ""
			local returns = parser.returnParser(value.returns) or ""
			local variantSrting = string.format(
				"%s%s%s",
				arguments .. (arguments ~= "" and "\n" or ""),
				returns, --.. (returns ~= "" and "\n" or ""),
				(diagFlag and "\n--- @diagnostic disable-next-line: duplicate-set-field" or "")
			)

			table.insert(variants, variantSrting)
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
			local literalargs = parser.argumentlitParser(value.variants)
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
				table.insert(result,
					funcString
					.. "\n"
					.. variantValue
					.. "\n"
					.. string.format(literalfdef, "args", "rets")
				)
			end

			--break
		end
	end
	return result
end

local functions = {
	{
		name = 'getVersion',
		description = 'Gets the current running version of LÖVE.',
		variants = {
			{
				description =
				'For LÖVE versions below 0.9.1, the following variables can be used instead (and still work in 0.9.2 and newer):\n\nlove._version_major\n\nlove._version_minor\n\nlove._version_revision',
				returns = {
					{
						type = 'number',
						name = 'major',
						description = 'The major version of LÖVE, i.e. 0 for version 0.9.1.',
					},
					{
						type = 'number',
						name = 'minor',
						description = 'The minor version of LÖVE, i.e. 9 for version 0.9.1.',
					},
					{
						type = 'number',
						name = 'revision',
						description = 'The revision version of LÖVE, i.e. 1 for version 0.9.1.',
					},
					{
						type = 'string',
						name = 'codename',
						description =
						'The codename of the current version, i.e. \'Baby Inspector\' for version 0.9.1.',
					},
				},
			},
		},
	},
	{
		name = 'hasDeprecationOutput',
		description =
		'Gets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.\n\nWhen deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.',
		variants = {
			{
				returns = {
					{
						type = 'boolean',
						name = 'enabled',
						description = 'Whether deprecation output is enabled.',
					},
				},
			},
		},
	},
	{
		name = 'isVersionCompatible',
		description = 'Gets whether the given version is compatible with the current running version of LÖVE.',
		variants = {
			{
				arguments = {
					{
						type = 'string',
						name = 'version',
						description = 'The version to check (for example \'11.3\' or \'0.10.2\').',
					},
				},
				returns = {
					{
						type = 'boolean',
						name = 'compatible',
						description =
						'Whether the given version is compatible with the current running version of LÖVE.',
					},
				},
			},
			{
				arguments = {
					{
						type = 'number',
						name = 'major',
						description = 'The major version to check (for example 11 for 11.3 or 0 for 0.10.2).',
					},
					{
						type = 'number',
						name = 'minor',
						description = 'The minor version to check (for example 3 for 11.3 or 10 for 0.10.2).',
					},
					{
						type = 'number',
						name = 'revision',
						description = 'The revision of version to check (for example 0 for 11.3 or 2 for 0.10.2).',
					},
				},
				returns = {
					{
						type = 'boolean',
						name = 'compatible',
						description =
						'Whether the given version is compatible with the current running version of LÖVE.',
					},
				},
			},
		},
	},
	{
		name = 'setDeprecationOutput',
		description =
		'Sets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.\n\nWhen deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.',
		variants = {
			{
				arguments = {
					{
						type = 'boolean',
						name = 'enable',
						description = 'Whether to enable or disable deprecation output.',
					},
				},
			},
		},
	},
}

for index, value in ipairs(parser.functionParser(functions, "love.")) do
	print(index)
	print(value)
end
