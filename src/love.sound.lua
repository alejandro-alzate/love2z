--- @meta

local love = {}
love.sound = {}

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

--- An object which can gradually decode a sound file.
--- @class Decoder: Object
local Decoder = {}

--- Creates a new copy of current decoder.
--- 
--- The new decoder will start decoding from the beginning of the audio stream.
---
--- @return Decoder decoder New copy of the decoder.
function Decoder:clone() return {} end
--- Decodes the audio and returns a SoundData object containing the decoded audio data.
---
--- @return SoundData soundData Decoded audio data.
function Decoder:decode() return {} end
--- Returns the number of bits per sample.
---
--- @return number bitDepth Either 8, or 16.
function Decoder:getBitDepth() return 0 end
--- Returns the number of channels in the stream.
---
--- @return number channels 1 for mono, 2 for stereo.
function Decoder:getChannelCount() return 0 end
--- Gets the duration of the sound file. It may not always be sample-accurate, and it may return -1 if the duration cannot be determined at all.
---
--- @return number duration The duration of the sound file in seconds, or -1 if it cannot be determined.
function Decoder:getDuration() return 0 end
--- Returns the sample rate of the Decoder.
---
--- @return number rate Number of samples per second.
function Decoder:getSampleRate() return 0 end
--- Sets the currently playing position of the Decoder.
---
--- @param offset number The position to seek to, in seconds.
--- @return nil
function Decoder:seek(offset) return  end

--- Contains raw audio samples.
--- 
--- You can not play SoundData back directly. You must wrap a Source object around it.
--- @class SoundData: Data, Object
local SoundData = {}

--- Returns the number of bits per sample.
---
--- @return number bitdepth Either 8, or 16.
function SoundData:getBitDepth() return 0 end
--- Returns the number of channels in the SoundData.
---
--- @return number channels 1 for mono, 2 for stereo.
function SoundData:getChannelCount() return 0 end
--- Gets the duration of the sound data.
---
--- @return number duration The duration of the sound data in seconds.
function SoundData:getDuration() return 0 end
--- Gets the value of the sample-point at the specified position. For stereo SoundData objects, the data from the left and right channels are interleaved in that order.
---
--- @param i number An integer value specifying the position of the sample (starting at 0).
--- @return number sample The normalized samplepoint (range -1.0 to 1.0).
--- @diagnostic disable-next-line: duplicate-set-field
function SoundData:getSample(i) return 0 end
--- Gets the value of the sample-point at the specified position. For stereo SoundData objects, the data from the left and right channels are interleaved in that order.
---
--- @param i number An integer value specifying the position of the sample (starting at 0).
--- @param channel number The index of the channel to get within the given sample.
--- @return number sample The normalized samplepoint (range -1.0 to 1.0).
--- @diagnostic disable-next-line: duplicate-set-field
function SoundData:getSample(i, channel) return 0 end
--- Returns the number of samples per channel of the SoundData.
---
--- @return number count Total number of samples.
function SoundData:getSampleCount() return 0 end
--- Returns the sample rate of the SoundData.
---
--- @return number rate Number of samples per second.
function SoundData:getSampleRate() return 0 end
--- Sets the value of the sample-point at the specified position. For stereo SoundData objects, the data from the left and right channels are interleaved in that order.
---
--- @param i number An integer value specifying the position of the sample (starting at 0).
--- @param sample number The normalized samplepoint (range -1.0 to 1.0).
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function SoundData:setSample(i, sample) return  end
--- Sets the value of the sample-point at the specified position. For stereo SoundData objects, the data from the left and right channels are interleaved in that order.
---
--- @param i number An integer value specifying the position of the sample (starting at 0).
--- @param channel number The index of the channel to set within the given sample.
--- @param sample number The normalized samplepoint (range -1.0 to 1.0).
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function SoundData:setSample(i, channel, sample) return  end

--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Attempts to find a decoder for the encoded sound data in the specified file.
---
--- @param file File The file with encoded sound data.
--- @param buffer number The size of each decoded chunk, in bytes.
--- @return Decoder decoder A new Decoder object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newDecoder(file, buffer) return {} end

--- Attempts to find a decoder for the encoded sound data in the specified file.
---
--- @param filename string The filename of the file with encoded sound data.
--- @param buffer number The size of each decoded chunk, in bytes.
--- @return Decoder decoder A new Decoder object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newDecoder(filename, buffer) return {} end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param filename string The file name of the file to load.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(filename) return {} end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param file File A File pointing to an audio file.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(file) return {} end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param decoder Decoder Decode data from this Decoder until EOF.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(decoder) return {} end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param samples number Total number of samples.
--- @param rate number Number of samples per second
--- @param bits number Bits per sample (8 or 16).
--- @param channels number Either 1 for mono or 2 for stereo.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(samples, rate, bits, channels) return {} end

--#endregion functions
