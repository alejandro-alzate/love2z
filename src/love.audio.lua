--- @meta

local love = {}
love.audio = {}

--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets a list of the names of the currently enabled effects.
---
--- @return table effects The list of the names of the currently enabled effects.
function love.audio.getActiveEffects() return {} end

--- Gets the current number of simultaneously playing sources.
---
--- @return number count The current number of simultaneously playing sources.
function love.audio.getActiveSourceCount() return 0 end

--- Returns the distance attenuation model.
---
--- @return DistanceModel model The current distance model. The default is 'inverseclamped'.
function love.audio.getDistanceModel() return DistanceModel end

--- Gets the current global scale factor for velocity-based doppler effects.
---
--- @return number scale The current doppler scale factor.
function love.audio.getDopplerScale() return 0 end

--- Gets the settings associated with an effect.
---
--- @param name string The name of the effect.
--- @return table settings The settings associated with the effect.
function love.audio.getEffect(name) return {} end

--- Gets the maximum number of active effects supported by the system.
---
--- @return number maximum The maximum number of active effects.
function love.audio.getMaxSceneEffects() return 0 end

--- Gets the maximum number of active Effects in a single Source object, that the system can support.
---
--- @return number maximum The maximum number of active Effects per Source.
function love.audio.getMaxSourceEffects() return 0 end

--- Returns the orientation of the listener.
---
--- @return number fx, fy, fz Forward vector of the listener orientation.
--- @return number ux, uy, uz Up vector of the listener orientation.
function love.audio.getOrientation() return 0, 0 end

--- Returns the position of the listener. Please note that positional audio only works for mono (i.e. non-stereo) sources.
---
--- @return number x The X position of the listener.
--- @return number y The Y position of the listener.
--- @return number z The Z position of the listener.
function love.audio.getPosition() return 0, 0, 0 end

--- Gets a list of RecordingDevices on the system.
--- 
--- The first device in the list is the user's default recording device. The list may be empty if there are no microphones connected to the system.
--- 
--- Audio recording is currently not supported on iOS.
---
--- @return table devices The list of connected recording devices.
function love.audio.getRecordingDevices() return {} end

--- Returns the velocity of the listener.
---
--- @return number x The X velocity of the listener.
--- @return number y The Y velocity of the listener.
--- @return number z The Z velocity of the listener.
function love.audio.getVelocity() return 0, 0, 0 end

--- Returns the master volume.
---
--- @return number volume The current master volume
function love.audio.getVolume() return 0 end

--- Gets whether audio effects are supported in the system.
---
--- @return boolean supported True if effects are supported, false otherwise.
function love.audio.isEffectsSupported() return true end

--- Creates a new Source usable for real-time generated sound playback with Source:queue.
---
--- @param samplerate number Number of samples per second when playing.
--- @param bitdepth number Bits per sample (8 or 16).
--- @param channels number 1 for mono or 2 for stereo.
--- @param buffercount number The number of buffers that can be queued up at any given time with Source:queue. Cannot be greater than 64. A sensible default (~8) is chosen if no value is specified.
--- @return Source source The new Source usable with Source:queue.
function love.audio.newQueueableSource(samplerate, bitdepth, channels, buffercount) return Source end

--- Creates a new Source from a filepath, File, Decoder or SoundData.
--- 
--- Sources created from SoundData are always static.
---
--- @param filename string The filepath to the audio file.
--- @param type SourceType Streaming or static source.
--- @return Source source A new Source that can play the specified audio.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.newSource(filename, type) return Source end

--- Creates a new Source from a filepath, File, Decoder or SoundData.
--- 
--- Sources created from SoundData are always static.
---
--- @param file File A File pointing to an audio file.
--- @param type SourceType Streaming or static source.
--- @return Source source A new Source that can play the specified audio.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.newSource(file, type) return Source end

--- Creates a new Source from a filepath, File, Decoder or SoundData.
--- 
--- Sources created from SoundData are always static.
---
--- @param decoder Decoder The Decoder to create a Source from.
--- @param type SourceType Streaming or static source.
--- @return Source source A new Source that can play the specified audio.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.newSource(decoder, type) return Source end

--- Creates a new Source from a filepath, File, Decoder or SoundData.
--- 
--- Sources created from SoundData are always static.
---
--- @param data FileData The FileData to create a Source from.
--- @param type SourceType Streaming or static source.
--- @return Source source A new Source that can play the specified audio.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.newSource(data, type) return Source end

--- Creates a new Source from a filepath, File, Decoder or SoundData.
--- 
--- Sources created from SoundData are always static.
---
--- @param data SoundData The SoundData to create a Source from.
--- @return Source source A new Source that can play the specified audio. The SourceType of the returned audio is 'static'.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.newSource(data) return Source end

--- Pauses specific or all currently played Sources.
---
--- @return table Sources A table containing a list of Sources that were paused by this call.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.pause() return {} end

--- Pauses specific or all currently played Sources.
---
--- @param source Source The first Source to pause.
--- @param ... Source Additional Sources to pause.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.pause(source, ...) return  end

--- Pauses specific or all currently played Sources.
---
--- @param sources table A table containing a list of Sources to pause.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.pause(sources) return  end

--- Plays the specified Source.
---
--- @param source Source The Source to play.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.play(source) return  end

--- Plays the specified Source.
---
--- @param sources table Table containing a list of Sources to play.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.play(sources) return  end

--- Plays the specified Source.
---
--- @param source1 Source The first Source to play.
--- @param source2 Source The second Source to play.
--- @param ... Source Additional Sources to play.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.play(source1, source2, ...) return  end

--- Sets the distance attenuation model.
---
--- @param model DistanceModel The new distance model.
--- @return nil
function love.audio.setDistanceModel(model) return  end

--- Sets a global scale factor for velocity-based doppler effects. The default scale value is 1.
---
--- @param scale number The new doppler scale factor. The scale must be greater than 0.
--- @return nil
function love.audio.setDopplerScale(scale) return  end

--- Defines an effect that can be applied to a Source.
--- 
--- Not all system supports audio effects. Use love.audio.isEffectsSupported to check.
---
--- @param name string The name of the effect.
--- @param settings table The settings to use for this effect, with the following fields:
--- @return boolean success Whether the effect was successfully created.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.setEffect(name, settings) return true end

--- Defines an effect that can be applied to a Source.
--- 
--- Not all system supports audio effects. Use love.audio.isEffectsSupported to check.
---
--- @param name string The name of the effect.
--- @param enabled boolean If false and the given effect name was previously set, disables the effect.
--- @return boolean success Whether the effect was successfully disabled.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.setEffect(name, enabled) return true end

--- Sets whether the system should mix the audio with the system's audio.
---
--- @param mix boolean True to enable mixing, false to disable it.
--- @return boolean success True if the change succeeded, false otherwise.
function love.audio.setMixWithSystem(mix) return true end

--- Sets the orientation of the listener.
---
--- @param fx, fy, fz number Forward vector of the listener orientation.
--- @param ux, uy, uz number Up vector of the listener orientation.
--- @return nil
function love.audio.setOrientation(fx, fy, fz, ux, uy, uz) return  end

--- Sets the position of the listener, which determines how sounds play.
---
--- @param x number The x position of the listener.
--- @param y number The y position of the listener.
--- @param z number The z position of the listener.
--- @return nil
function love.audio.setPosition(x, y, z) return  end

--- Sets the velocity of the listener.
---
--- @param x number The X velocity of the listener.
--- @param y number The Y velocity of the listener.
--- @param z number The Z velocity of the listener.
--- @return nil
function love.audio.setVelocity(x, y, z) return  end

--- Sets the master volume.
---
--- @param volume number 1.0 is max and 0.0 is off.
--- @return nil
function love.audio.setVolume(volume) return  end

--- Stops currently played sources.
---
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.stop() return  end

--- Stops currently played sources.
---
--- @param source Source The source on which to stop the playback.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.stop(source) return  end

--- Stops currently played sources.
---
--- @param source1 Source The first Source to stop.
--- @param source2 Source The second Source to stop.
--- @param ... Source Additional Sources to stop.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.stop(source1, source2, ...) return  end

--- Stops currently played sources.
---
--- @param sources table A table containing a list of Sources to stop.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.stop(sources) return  end

--#endregion functions
