--- @meta

local love = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --



--#endregion enums
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets the current running version of LÖVE.
---
--- @return number major The major version of LÖVE, i.e. 0 for version 0.9.1.
--- @return number minor The minor version of LÖVE, i.e. 9 for version 0.9.1.
--- @return number revision The revision version of LÖVE, i.e. 1 for version 0.9.1.
--- @return string codename The codename of the current version, i.e. 'Baby Inspector' for version 0.9.1.
function lovegetVersion() return 0, 0, 0, "" end

--- Gets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.
--- 
--- When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---
--- @return boolean enabled Whether deprecation output is enabled.
function lovehasDeprecationOutput() return true end

--- Gets whether the given version is compatible with the current running version of LÖVE.
---
--- @param version string The version to check (for example '11.3' or '0.10.2').
--- @return boolean compatible Whether the given version is compatible with the current running version of LÖVE.
--- @diagnostic disable-next-line: duplicate-set-field
function loveisVersionCompatible(version) return true end

--- Gets whether the given version is compatible with the current running version of LÖVE.
---
--- @param major number The major version to check (for example 11 for 11.3 or 0 for 0.10.2).
--- @param minor number The minor version to check (for example 3 for 11.3 or 10 for 0.10.2).
--- @param revision number The revision of version to check (for example 0 for 11.3 or 2 for 0.10.2).
--- @return boolean compatible Whether the given version is compatible with the current running version of LÖVE.
--- @diagnostic disable-next-line: duplicate-set-field
function loveisVersionCompatible(major, minor, revision) return true end

--- Sets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.
--- 
--- When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---
--- @param enable boolean Whether to enable or disable deprecation output.
--- @return nil
function lovesetDeprecationOutput(enable) return  end

--#endregion functions
