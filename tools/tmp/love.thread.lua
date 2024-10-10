--- @meta

local love = {}
love.thread = {}

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

--- Creates or retrieves a named thread channel.
---
--- @param name string The name of the channel you want to create or retrieve.
--- @return Channel channel The Channel object associated with the name.
function love.thread.getChannel(name) return {} end

--- Create a new unnamed thread channel.
--- 
--- One use for them is to pass new unnamed channels to other threads via Channel:push on a named channel.
---
--- @return Channel channel The new Channel object.
function love.thread.newChannel() return {} end

--- Creates a new Thread from a filename, string or FileData object containing Lua code.
---
--- @param filename string The name of the Lua file to use as the source.
--- @return Thread thread A new Thread that has yet to be started.
--- @diagnostic disable-next-line: duplicate-set-field
function love.thread.newThread(filename) return {} end

--- Creates a new Thread from a filename, string or FileData object containing Lua code.
---
--- @param fileData FileData The FileData containing the Lua code to use as the source.
--- @return Thread thread A new Thread that has yet to be started.
--- @diagnostic disable-next-line: duplicate-set-field
function love.thread.newThread(fileData) return {} end

--- Creates a new Thread from a filename, string or FileData object containing Lua code.
---
--- @param codestring string A string containing the Lua code to use as the source. It needs to either be at least 1024 characters long, or contain at least one newline.
--- @return Thread thread A new Thread that has yet to be started.
--- @diagnostic disable-next-line: duplicate-set-field
function love.thread.newThread(codestring) return {} end

--#endregion functions
