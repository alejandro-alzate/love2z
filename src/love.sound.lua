--- @meta

local love = {}
love.sound = {}

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
function love.sound.newDecoder(file, buffer) return Decoder end

--- Attempts to find a decoder for the encoded sound data in the specified file.
---
--- @param filename string The filename of the file with encoded sound data.
--- @param buffer number The size of each decoded chunk, in bytes.
--- @return Decoder decoder A new Decoder object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newDecoder(filename, buffer) return Decoder end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param filename string The file name of the file to load.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(filename) return SoundData end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param file File A File pointing to an audio file.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(file) return SoundData end

--- Creates new SoundData from a filepath, File, or Decoder. It's also possible to create SoundData with a custom sample rate, channel and bit depth.
--- 
--- The sound data will be decoded to the memory in a raw format. It is recommended to create only short sounds like effects, as a 3 minute song uses 30 MB of memory this way.
---
--- @param decoder Decoder Decode data from this Decoder until EOF.
--- @return SoundData soundData A new SoundData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.sound.newSoundData(decoder) return SoundData end

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
function love.sound.newSoundData(samples, rate, bits, channels) return SoundData end

--#endregion functions
