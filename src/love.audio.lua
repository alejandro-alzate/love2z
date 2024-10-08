--- Provides of audio interface for playback/recording sound.
---
--- [View online documents](https://love2d.org/wiki/love.audio)
love.audio = {}

-- ************************************************************ --
-- ************************************************************ --
-- Classes
-- ************************************************************ --
-- ************************************************************ --

--- @class RecordingDevice: Object
---| Represents an audio input device capable of recording sounds.

--- @class Source: Object
---| A Source represents audio you can play back. You can do interesting things with Sources, like set the volume, pitch, and its position relative to the listener. Please note that positional audio only works for mono (i.e. non-stereo) sources.

-- ************************************************************ --
-- ************************************************************ --
-- Enums
-- ************************************************************ --
-- ************************************************************ --

--- DistanceModel ---
---
---> ***Available since LÖVE 0.8.0***
--->
---> This enum is not supported in earlier versions.
---
--- The different distance models.
---
--- Extended information can be found in the chapter "3.4. Attenuation By Distance" of the OpenAL 1.1 specification.

--- @alias DistanceModel ---
---| "none"					# Sources do not get attenuated.
---| "inverse"				# Inverse distance attenuation.
---| "inverseclamped"		# Inverse distance attenuation. Gain is clamped. In version 0.9.2 and older this is named inverse clamped.
---| "linear"				# Linear attenuation.
---| "linearclamped"		# Linear attenuation. Gain is clamped. In version 0.9.2 and older this is named linear clamped.
---| "exponent"				# Exponential attenuation.
---| "exponentclamped"		# Exponential attenuation. Gain is clamped. In version 0.9.2 and older this is named exponent clamped.

--- EffectType ---
---
---> ***Available since LÖVE 11.0***
--->
---> This enum is not supported in earlier versions.
---
--- The different types of effects supported by love.audio.setEffect.

--- @alias EffectType ---
---| "chorus"				# Plays multiple copies of the sound with slight pitch and time variation. Used to make sounds sound "fuller" or "thicker".
---| "compressor"			# Decreases the dynamic range of the sound, making the loud and quiet parts closer in volume, producing a more uniform amplitude throughout time.
---| "distortion"			# Alters the sound by amplifying it until it clips, shearing off parts of the signal, leading to a compressed and distorted sound.
---| "echo"					# Decaying feedback based effect, on the order of seconds. Also known as delay; causes the sound to repeat at regular intervals at a decreasing volume.
---| "equalizer"			# Adjust the frequency components of the sound using a 4-band (low-shelf, two band-pass and a high-shelf) equalizer.
---| "flanger"				# Plays two copies of the sound; while varying the phase, or equivalently delaying one of them, by amounts on the order of milliseconds, resulting in phasing sounds.
---| "reverb"				# Decaying feedback based effect, on the order of milliseconds. Used to simulate the reflection off of the surroundings.
---| "ringmodulator"		# An implementation of amplitude modulation; multiplies the source signal with a simple waveform, to produce either volume changes, or inharmonic overtones

--- EffectWaveform ---
---
---> ***Available since LÖVE 11.0***
--->
---> This enum is not supported in earlier versions.
---
--- The different types of waveforms that can be used with the ringmodulator EffectType.

--- @alias EffectWaveform
---| "sawtooth"				# A sawtooth wave, also known as a ramp wave. Named for its linear rise, and (near-)instantaneous fall along time.
---| "sine"					# A sine wave. Follows a trigonometric sine function.
---| "square"				# A square wave. Switches between high and low states (near-)instantaneously.
---| "triangle"				# A triangle wave. Follows a linear rise and fall that repeats periodically.

--- SourceType
--- Types of audio sources.
---
--- A good rule of thumb is to use stream for music files and static for all short sound effects. Basically, you want to avoid loading large files into memory at once.

--- @alias SourceType
---| "static"				# The whole audio is decoded.
---| "stream"				# The audio is decoded in chunks when needed.
---| "queue"				# Available since LÖVE 11.0: The audio must be manually queued by the user.

--- TimeUnit ---
---
---> ***Available since LÖVE 0.8.0***
--->
---> This enum is not supported in earlier versions.
---
--- Units that represent time.

--- @alias TimeUnit
---| "seconds"				# Regular seconds.
---| "samples"				# Audio samples.

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
--- @nodiscard
function love.audio.getActiveSourceCount() return 0 end

--- Returns the distance attenuation model.
--- @return DistanceModel model
--- @nodiscard
function love.audio.getDistanceModel() return "none" end

--- Gets the global scale factor for doppler effects.
--- @return number scale The current doppler scale factor.
--- @nodiscard
function love.audio.getDopplerScale() return 0 end

--- Gets the settings associated with an effect.
--- @param name string The name of the effect.
--- @return table settings The settings associated with the effect.
--- @nodiscard
function love.audio.getEffect(name) return {} end

--- Gets the maximum number of active effects.
--- @return number maximum The maximum number of active effects.
--- @nodiscard
function love.audio.getMaxSceneEffects() return 0 end

--- Gets the maximum number of active Effects for each Source.
--- @return number maximum The maximum number of active Effects per Source.
--- @nodiscard
function love.audio.getMaxSourceEffects() return 0 end

---> ***Removed in LÖVE 0.9.0***
--->
---> This funtion is not supported in that and later versions.
---
--- Gets the current number of simultaneously playing sources.
--- @deprecated
--- @return number numSources The current number of simultaneously playing sources.
--- @nodiscard
function love.audio.getNumSources() return 0 end

--- Returns the orientation of the listener.
--- @return number fx, number fy, number fz, number ux, number uy, number uz Forward vector 3 of the listener orientation, Up vector 3 of the listener orientation.
--- @nodiscard
function love.audio.getOrientation() return 0, 0, 0, 0, 0, 0 end

--- Returns the position of the listener.
--- @return number x The X position of the listener.
--- @return number y The Y position of the listener.
--- @return number z The Z position of the listener.
--- @nodiscard
function love.audio.getPosition() return 0, 0, 0 end

--- Gets a list of RecordingDevices on the system.
---
--- The first device in the list is the user's default recording device.
--- The list may be empty if there are no microphones connected to the system.
---
--- Audio recording is currently not supported on iOS. (Apple restrictions moment.)
---
--- ### Notes:
---
--- Audio recording for Android is supported since 11.3. However, it's not supported when APK from Play Store is used.
---
--- @return table devices The list of connected recording devices.
--- @nodiscard
function love.audio.getRecordingDevices() return {} end

---> ***Available since LÖVE 0.9.0***
--->
---> ***Deprecated in LÖVE 11.0***
---
--- Gets the current number of simultaneously playing sources.
--- @deprecated
--- @return number numSources The current number of simultaneously playing sources.
--- @nodiscard
function love.audio.getSourceCount() return 0 end

--- Returns the velocity of the listener.
--- @return number x The X velocity of the listener.
--- @return number y The Y velocity of the listener.
--- @return number z The Z velocity of the listener.
--- @nodiscard
function love.audio.getVelocity() return 0, 0, 0 end

--- Returns the master volume.
--- @return number volume The current master volume.
--- @nodiscard
function love.audio.getVolume() return 0 end

--- Gets whether Effects are supported in the system.
--- ### Notes:
---
--- Older Linux distributions that ship with older OpenAL library may not support audio effects. Furthermore, iOS doesn't support audio effects at all.
--- @return boolean supported True if effects are supported, false otherwise.
function love.audio.isEffectsSupported() return true end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in that and prior versions.
---
--- Creates a new Source usable for real-time generated sound playback with Source:queue.
---
--- Queueable sources allow SoundData objects to be played seamlessly one after another, without the need to wait for an update cycle.
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
--- @param samplerate number	Number of samples per second when playing.
--- @param bitdepth number		Bits per sample (8 or 16).
--- @param channels number		1 for mono or 2 for stereo.
--- @param buffercount number	The number of buffers that can be queued up at any given time with Source:queue. Cannot be greater than 64. A sensible default (~8) is chosen if no value is specified.
--- @return Source source
function love.audio.newQueueableSource(samplerate, bitdepth, channels, buffercount) return {} end

--- Creates a new Source from a file, SoundData, Decoder or SoundData. Sources created from SoundData are always static.
--- @param filename string The filepath to the audio file.
--- @param type SourceType Streaming or static source.
--- @return Source
function love.audio.newSource(filename, type) return {} end

---> ***Available since LÖVE 11.0***
--->
---> This variant is not supported in that and earlier versions.
---
--- Pauses all currently active Sources and returns them.
---
--- Pauses specific or all currently played Sources.
--- @param source? Source Especific source to pause, all will be playing sources will be paused if not provided.
--- @param ...? Source Additional Sources to pause.
--- @return table|nil sources A table containing a list of Sources that were paused by this call. nil if you provided the sources.
function love.audio.pause(source, ...) return {} end

--- Plays the specified Source.
---
---> ***Available since LÖVE 11.0***
--->
---> This variant is not supported in that and earlier versions.
---
--- Starts playing one or multiple Sources simultaneously.
---
--- @param source? Source The first Source to play.
--- @param ...? Source Additional Sources to play.
--- @return boolean success Whether the Sources were able to successfully start playing.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.play(source, ...) return true end

---> ***Available since LÖVE 11.0***
--->
---> This variant is not supported in that and earlier versions.
---
--- Starts playing a list of Sources simultaneously.
---
--- @param sources table Table containing a list of Sources to play.
--- @return boolean success Whether the Sources were able to successfully start playing.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.play(sources) return true end

---> ***Removed in 11.0***
--->
---> Use `love.audio.play` instead.
---
--- Resumes all audio.
--- @deprecated
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.resume() end

--- Resume a specific audio
---	@param source Source The source on which to resume the playback.
--- @return nil
--- @deprecated
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.resume(source) end

---> ***Removed in 11.0***
--->
---> Use `Source:seek(0)` instead.
---
--- Rewinds all playing audio.
--- @deprecated
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.rewind() end

--- Rewinds a specific source.
--- @param source Source The source to rewind.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.rewind(source) end

---> ***Available since LÖVE 0.8.0***
--->
---> This function is not supported in earlier versions.
---
--- Sets the distance attenuation model.
---
--- @param model DistanceModel
--- @return nil
function love.audio.setDistanceModel(model) end

---> ***Available since LÖVE 0.9.2***
--->
---> This function is not supported in earlier versions.
---
--- Sets a global scale factor for velocity-based doppler effects. The default scale value is 1.
--- @param scale number The new doppler scale factor. The scale must be greater than 0.
--- @return nil
--- Sets a global scale factor for doppler effects.
function love.audio.setDopplerScale(scale) end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Defines an effect that can be applied to a Source.
---
--- Not all systems support audio effects. Use `love.audio.isEffectsSupported` to check.
---
--- @param name string The name of the effect.
--- @param settings table The settings to use for this effect, with the following fields:
--- * *EffectType:* `type` The type of effect to use.
--- * *number:* `volume` The volume of the effect.
--- * *number:* `...` Effect-specific settings. See EffectType for available effects and their corresponding settings.
--- @return boolean success Whether the effect was successfully created.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.setEffect(name, settings) return true end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Enable or disable a effect.
--- @param name string The name of the effect.
--- @param enabled boolean (true) If false and the given effect name was previously set, disables the effect.
--- @return boolean success Whether the effect was successfully created.
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.setEffect(name, enabled) return true end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Sets whether the system should mix the audio with the system's audio.
--- @param mix boolean True to enable mixing, false to disable it.
--- @return boolean success True if the change succeeded, false otherwise.
function love.audio.setMixWithSystem(mix) return true end

--- Sets the orientation of the listener.
--- @param fx number Forward X of the listener orientation
--- @param fy number Forward Y of the listener orientation
--- @param fz number Forward Z of the listener orientation
--- @param ux number Up X of the listener orientation.
--- @param uy number Up Y of the listener orientation.
--- @param uz number Up Z of the listener orientation.
--- @return nil
function love.audio.setOrientation(fx, fy, fz, ux, uy, uz) end

--- Sets the position of the listener, which determines how sounds play.
--- @param x number The x position of the listener.
--- @param y number The y position of the listener.
--- @param z number The z position of the listener.
--- @return nil
function love.audio.setPosition(x, y, z) end

--- Sets the velocity of the listener.
--- @param x number The x velocity of the listener.
--- @param y number The y velocity of the listener.
--- @param z number The z velocity of the listener.
--- @return nil
function love.audio.setVelocity(x, y, z) end

--- Sets the master volume.
--- @param volume number `1.0` is max and `0.0` is off.
function love.audio.setVolume(volume) end

--- Stops specific or all currently played sources.
---
--- This function will stop all currently active sources.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.stop() end

---> ***Available since LÖVE 11.0***
--->
---> This variant is not supported in earlier versions.
---
---Stops one or multiple Sources simultaneously.
--- @diagnostic disable-next-line: duplicate-set-field
--- @return nil
---@diagnostic disable-next-line: duplicate-set-field
function love.audio.stop(source, ...) end

---> ***Available since LÖVE 11.0***
--->
---> This variant is not supported in earlier versions.
---
--- Stops a list of Sources simultaneously.
--- @param sources table A table containing a list of Sources to stop.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.audio.stop(sources) end
