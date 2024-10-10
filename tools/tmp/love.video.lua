--- @meta

local love = {}
love.video = {}

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

--- Creates a new VideoStream. Currently only Ogg Theora video files are supported. VideoStreams can't draw videos, see love.graphics.newVideo for that.
---
--- @param filename string The file path to the Ogg Theora video file.
--- @return VideoStream videostream A new VideoStream.
--- @diagnostic disable-next-line: duplicate-set-field
function love.video.newVideoStream(filename) return {} end

--- Creates a new VideoStream. Currently only Ogg Theora video files are supported. VideoStreams can't draw videos, see love.graphics.newVideo for that.
---
--- @param file File The File object containing the Ogg Theora video.
--- @return VideoStream videostream A new VideoStream.
--- @diagnostic disable-next-line: duplicate-set-field
function love.video.newVideoStream(file) return {} end

--#endregion functions
