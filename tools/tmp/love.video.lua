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
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- An object which decodes, streams, and controls Videos.
--- @class VideoStream: Object
local VideoStream = {}

--- Gets the filename of the VideoStream.
---
--- @return string filename The filename of the VideoStream
function VideoStream:getFilename() return "" end
--- Gets whether the VideoStream is playing.
---
--- @return boolean playing Whether the VideoStream is playing.
function VideoStream:isPlaying() return true end
--- Pauses the VideoStream.
---
--- @return nil
function VideoStream:pause() return  end
--- Plays the VideoStream.
---
--- @return nil
function VideoStream:play() return  end
--- Rewinds the VideoStream. Synonym to VideoStream:seek(0).
---
--- @return nil
function VideoStream:rewind() return  end
--- Sets the current playback position of the VideoStream.
---
--- @param offset number The time in seconds since the beginning of the VideoStream.
--- @return nil
function VideoStream:seek(offset) return  end
--- Gets the current playback position of the VideoStream.
---
--- @return number seconds The number of seconds sionce the beginning of the VideoStream.
function VideoStream:tell() return 0 end

--#endregion types
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
