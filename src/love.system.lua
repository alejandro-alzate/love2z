--- @meta

local love = {}
love.system = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- The basic state of the system's power supply.
--- @alias PowerState
---| "unknown"			#		Cannot determine power status.
---| "battery"			#		Not plugged in, running on a battery.
---| "nobattery"			#		Plugged in, no battery available.
---| "charging"			#		Plugged in, charging battery.
---| "charged"			#		Plugged in, battery is fully charged.


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --



--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets text from the clipboard.
---
--- @return string text The text currently held in the system's clipboard.
function love.system.getClipboardText() return "" end

--- Gets the current operating system. In general, LÖVE abstracts away the need to know the current operating system, but there are a few cases where it can be useful (especially in combination with os.execute.)
---
--- @return string osString The current operating system. 'OS X', 'Windows', 'Linux', 'Android' or 'iOS'.
function love.system.getOS() return "" end

--- Gets information about the system's power supply.
---
--- @return PowerState state The basic state of the power supply.
--- @return number percent Percentage of battery life left, between 0 and 100. nil if the value can't be determined or there's no battery.
--- @return number seconds Seconds of battery life left. nil if the value can't be determined or there's no battery.
function love.system.getPowerInfo() return {}, 0, 0 end

--- Gets the amount of logical processor in the system.
---
--- @return number processorCount Amount of logical processors.
function love.system.getProcessorCount() return 0 end

--- Gets whether another application on the system is playing music in the background.
--- 
--- Currently this is implemented on iOS and Android, and will always return false on other operating systems. The t.audio.mixwithsystem flag in love.conf can be used to configure whether background audio / music from other apps should play while LÖVE is open.
---
--- @return boolean backgroundmusic True if the user is playing music in the background via another app, false otherwise.
function love.system.hasBackgroundMusic() return true end

--- Opens a URL with the user's web or file browser.
---
--- @param url string The URL to open. Must be formatted as a proper URL.
--- @return boolean success Whether the URL was opened successfully.
function love.system.openURL(url) return true end

--- Puts text in the clipboard.
---
--- @param text string The new text to hold in the system's clipboard.
--- @return nil
function love.system.setClipboardText(text) return  end

--- Causes the device to vibrate, if possible. Currently this will only work on Android and iOS devices that have a built-in vibration motor.
---
--- @param seconds number The duration to vibrate for. If called on an iOS device, it will always vibrate for 0.5 seconds due to limitations in the iOS system APIs.
--- @return nil
function love.system.vibrate(seconds) return  end

--#endregion functions
