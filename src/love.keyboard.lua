--- @meta

local love = {}
love.keyboard = {}

--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets the key corresponding to the given hardware scancode.
--- 
--- Unlike key constants, Scancodes are keyboard layout-independent. For example the scancode 'w' will be generated if the key in the same place as the 'w' key on an American keyboard is pressed, no matter what the key is labelled or what the user's operating system settings are.
--- 
--- Scancodes are useful for creating default controls that have the same physical locations on on all systems.
---
--- @param scancode Scancode The scancode to get the key from.
--- @return KeyConstant key The key corresponding to the given scancode, or 'unknown' if the scancode doesn't map to a KeyConstant on the current system.
function love.keyboard.getKeyFromScancode(scancode) return KeyConstant end

--- Gets the hardware scancode corresponding to the given key.
--- 
--- Unlike key constants, Scancodes are keyboard layout-independent. For example the scancode 'w' will be generated if the key in the same place as the 'w' key on an American keyboard is pressed, no matter what the key is labelled or what the user's operating system settings are.
--- 
--- Scancodes are useful for creating default controls that have the same physical locations on on all systems.
---
--- @param key KeyConstant The key to get the scancode from.
--- @return Scancode scancode The scancode corresponding to the given key, or 'unknown' if the given key has no known physical representation on the current system.
function love.keyboard.getScancodeFromKey(key) return Scancode end

--- Gets whether key repeat is enabled.
---
--- @return boolean enabled Whether key repeat is enabled.
function love.keyboard.hasKeyRepeat() return true end

--- Gets whether screen keyboard is supported.
---
--- @return boolean supported Whether screen keyboard is supported.
function love.keyboard.hasScreenKeyboard() return true end

--- Gets whether text input events are enabled.
---
--- @return boolean enabled Whether text input events are enabled.
function love.keyboard.hasTextInput() return true end

--- Checks whether a certain key is down. Not to be confused with love.keypressed or love.keyreleased.
---
--- @param key KeyConstant The key to check.
--- @return boolean down True if the key is down, false if not.
--- @diagnostic disable-next-line: duplicate-set-field
function love.keyboard.isDown(key) return true end

--- Checks whether a certain key is down. Not to be confused with love.keypressed or love.keyreleased.
---
--- @param key KeyConstant A key to check.
--- @param ... KeyConstant Additional keys to check.
--- @return boolean anyDown True if any supplied key is down, false if not.
--- @diagnostic disable-next-line: duplicate-set-field
function love.keyboard.isDown(key, ...) return true end

--- Checks whether the specified Scancodes are pressed. Not to be confused with love.keypressed or love.keyreleased.
--- 
--- Unlike regular KeyConstants, Scancodes are keyboard layout-independent. The scancode 'w' is used if the key in the same place as the 'w' key on an American keyboard is pressed, no matter what the key is labelled or what the user's operating system settings are.
---
--- @param scancode Scancode A Scancode to check.
--- @param ... Scancode Additional Scancodes to check.
--- @return boolean down True if any supplied Scancode is down, false if not.
function love.keyboard.isScancodeDown(scancode, ...) return true end

--- Enables or disables key repeat for love.keypressed. It is disabled by default.
---
--- @param enable boolean Whether repeat keypress events should be enabled when a key is held down.
--- @return nil
function love.keyboard.setKeyRepeat(enable) return  end

--- Enables or disables text input events. It is enabled by default on Windows, Mac, and Linux, and disabled by default on iOS and Android.
--- 
--- On touch devices, this shows the system's native on-screen keyboard when it's enabled.
---
--- @param enable boolean Whether text input events should be enabled.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.keyboard.setTextInput(enable) return  end

--- Enables or disables text input events. It is enabled by default on Windows, Mac, and Linux, and disabled by default on iOS and Android.
--- 
--- On touch devices, this shows the system's native on-screen keyboard when it's enabled.
---
--- @param enable boolean Whether text input events should be enabled.
--- @param x number Text rectangle x position.
--- @param y number Text rectangle y position.
--- @param w number Text rectangle width.
--- @param h number Text rectangle height.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.keyboard.setTextInput(enable, x, y, w, h) return  end

--#endregion functions
