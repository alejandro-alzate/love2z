--- @meta

local love = {}
love.joystick = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- Virtual gamepad axes.
--- @alias GamepadAxis
---| "leftx"			#		The x-axis of the left thumbstick.
---| "lefty"			#		The y-axis of the left thumbstick.
---| "rightx"			#		The x-axis of the right thumbstick.
---| "righty"			#		The y-axis of the right thumbstick.
---| "triggerleft"			#		Left analog trigger.
---| "triggerright"			#		Right analog trigger.


--- Virtual gamepad buttons.
--- @alias GamepadButton
---| "a"			#		Bottom face button (A).
---| "b"			#		Right face button (B).
---| "x"			#		Left face button (X).
---| "y"			#		Top face button (Y).
---| "back"			#		Back button.
---| "guide"			#		Guide button.
---| "start"			#		Start button.
---| "leftstick"			#		Left stick click button.
---| "rightstick"			#		Right stick click button.
---| "leftshoulder"			#		Left bumper.
---| "rightshoulder"			#		Right bumper.
---| "dpup"			#		D-pad up.
---| "dpdown"			#		D-pad down.
---| "dpleft"			#		D-pad left.
---| "dpright"			#		D-pad right.


--- Joystick hat positions.
--- @alias JoystickHat
---| "c"			#		Centered
---| "d"			#		Down
---| "l"			#		Left
---| "ld"			#		Left+Down
---| "lu"			#		Left+Up
---| "r"			#		Right
---| "rd"			#		Right+Down
---| "ru"			#		Right+Up
---| "u"			#		Up


--- Types of Joystick inputs.
--- @alias JoystickInputType
---| "axis"			#		Analog axis.
---| "button"			#		Button.
---| "hat"			#		8-direction hat value.


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- Represents a physical joystick.
--- @class Joystick: Object
local Joystick = {}

--- Gets the direction of each axis.
---
--- @return number axisDir1 Direction of axis1.
--- @return number axisDir2 Direction of axis2.
--- @return number axisDirN Direction of axisN.
function Joystick:getAxes() return 0, 0, 0 end
--- Gets the direction of an axis.
---
--- @param axis number The index of the axis to be checked.
--- @return number direction Current value of the axis.
function Joystick:getAxis(axis) return 0 end
--- Gets the number of axes on the joystick.
---
--- @return number axes The number of axes available.
function Joystick:getAxisCount() return 0 end
--- Gets the number of buttons on the joystick.
---
--- @return number buttons The number of buttons available.
function Joystick:getButtonCount() return 0 end
--- Gets the USB vendor ID, product ID, and product version numbers of joystick which consistent across operating systems.
--- 
--- Can be used to show different icons, etc. for different gamepads.
---
--- @return number vendorID The USB vendor ID of the joystick.
--- @return number productID The USB product ID of the joystick.
--- @return number productVersion The product version of the joystick.
function Joystick:getDeviceInfo() return 0, 0, 0 end
--- Gets a stable GUID unique to the type of the physical joystick which does not change over time. For example, all Sony Dualshock 3 controllers in OS X have the same GUID. The value is platform-dependent.
---
--- @return string guid The Joystick type's OS-dependent unique identifier.
function Joystick:getGUID() return "" end
--- Gets the direction of a virtual gamepad axis. If the Joystick isn't recognized as a gamepad or isn't connected, this function will always return 0.
---
--- @param axis GamepadAxis The virtual axis to be checked.
--- @return number direction Current value of the axis.
function Joystick:getGamepadAxis(axis) return 0 end
--- Gets the button, axis or hat that a virtual gamepad input is bound to.
---
--- @param axis GamepadAxis The virtual gamepad axis to get the binding for.
--- @return JoystickInputType inputtype The type of input the virtual gamepad axis is bound to.
--- @return number inputindex The index of the Joystick's button, axis or hat that the virtual gamepad axis is bound to.
--- @return JoystickHat hatdirection The direction of the hat, if the virtual gamepad axis is bound to a hat. nil otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function Joystick:getGamepadMapping(axis) return {}, 0, {} end
--- Gets the button, axis or hat that a virtual gamepad input is bound to.
---
--- @param button GamepadButton The virtual gamepad button to get the binding for.
--- @return JoystickInputType inputtype The type of input the virtual gamepad button is bound to.
--- @return number inputindex The index of the Joystick's button, axis or hat that the virtual gamepad button is bound to.
--- @return JoystickHat hatdirection The direction of the hat, if the virtual gamepad button is bound to a hat. nil otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function Joystick:getGamepadMapping(button) return {}, 0, {} end
--- Gets the full gamepad mapping string of this Joystick, or nil if it's not recognized as a gamepad.
--- 
--- The mapping string contains binding information used to map the Joystick's buttons an axes to the standard gamepad layout, and can be used later with love.joystick.loadGamepadMappings.
---
--- @return string mappingstring A string containing the Joystick's gamepad mappings, or nil if the Joystick is not recognized as a gamepad.
function Joystick:getGamepadMappingString() return "" end
--- Gets the direction of the Joystick's hat.
---
--- @param hat number The index of the hat to be checked.
--- @return JoystickHat direction The direction the hat is pushed.
function Joystick:getHat(hat) return {} end
--- Gets the number of hats on the joystick.
---
--- @return number hats How many hats the joystick has.
function Joystick:getHatCount() return 0 end
--- Gets the joystick's unique identifier. The identifier will remain the same for the life of the game, even when the Joystick is disconnected and reconnected, but it '''will''' change when the game is re-launched.
---
--- @return number id The Joystick's unique identifier. Remains the same as long as the game is running.
--- @return number instanceid Unique instance identifier. Changes every time the Joystick is reconnected. nil if the Joystick is not connected.
function Joystick:getID() return 0, 0 end
--- Gets the name of the joystick.
---
--- @return string name The name of the joystick.
function Joystick:getName() return "" end
--- Gets the current vibration motor strengths on a Joystick with rumble support.
---
--- @return number left Current strength of the left vibration motor on the Joystick.
--- @return number right Current strength of the right vibration motor on the Joystick.
function Joystick:getVibration() return 0, 0 end
--- Gets whether the Joystick is connected.
---
--- @return boolean connected True if the Joystick is currently connected, false otherwise.
function Joystick:isConnected() return true end
--- Checks if a button on the Joystick is pressed.
--- 
--- LÖVE 0.9.0 had a bug which required the button indices passed to Joystick:isDown to be 0-based instead of 1-based, for example button 1 would be 0 for this function. It was fixed in 0.9.1.
---
--- @param buttonN number The index of a button to check.
--- @return boolean anyDown True if any supplied button is down, false if not.
function Joystick:isDown(buttonN) return true end
--- Gets whether the Joystick is recognized as a gamepad. If this is the case, the Joystick's buttons and axes can be used in a standardized manner across different operating systems and joystick models via Joystick:getGamepadAxis, Joystick:isGamepadDown, love.gamepadpressed, and related functions.
--- 
--- LÖVE automatically recognizes most popular controllers with a similar layout to the Xbox 360 controller as gamepads, but you can add more with love.joystick.setGamepadMapping.
---
--- @return boolean isgamepad True if the Joystick is recognized as a gamepad, false otherwise.
function Joystick:isGamepad() return true end
--- Checks if a virtual gamepad button on the Joystick is pressed. If the Joystick is not recognized as a Gamepad or isn't connected, then this function will always return false.
---
--- @param buttonN GamepadButton The gamepad button to check.
--- @return boolean anyDown True if any supplied button is down, false if not.
function Joystick:isGamepadDown(buttonN) return true end
--- Gets whether the Joystick supports vibration.
---
--- @return boolean supported True if rumble / force feedback vibration is supported on this Joystick, false if not.
function Joystick:isVibrationSupported() return true end
--- Sets the vibration motor speeds on a Joystick with rumble support. Most common gamepads have this functionality, although not all drivers give proper support. Use Joystick:isVibrationSupported to check.
---
--- @param left number Strength of the left vibration motor on the Joystick. Must be in the range of 1.
--- @param right number Strength of the right vibration motor on the Joystick. Must be in the range of 1.
--- @return boolean success True if the vibration was successfully applied, false if not.
--- @diagnostic disable-next-line: duplicate-set-field
function Joystick:setVibration(left, right) return true end
--- Sets the vibration motor speeds on a Joystick with rumble support. Most common gamepads have this functionality, although not all drivers give proper support. Use Joystick:isVibrationSupported to check.
---
--- @return boolean success True if the vibration was successfully disabled, false if not.
--- @diagnostic disable-next-line: duplicate-set-field
function Joystick:setVibration() return true end
--- Sets the vibration motor speeds on a Joystick with rumble support. Most common gamepads have this functionality, although not all drivers give proper support. Use Joystick:isVibrationSupported to check.
---
--- @param left number Strength of the left vibration motor on the Joystick. Must be in the range of 1.
--- @param right number Strength of the right vibration motor on the Joystick. Must be in the range of 1.
--- @param duration number The duration of the vibration in seconds. A negative value means infinite duration.
--- @return boolean success True if the vibration was successfully applied, false if not.
--- @diagnostic disable-next-line: duplicate-set-field
function Joystick:setVibration(left, right, duration) return true end

--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets the full gamepad mapping string of the Joysticks which have the given GUID, or nil if the GUID isn't recognized as a gamepad.
--- 
--- The mapping string contains binding information used to map the Joystick's buttons an axes to the standard gamepad layout, and can be used later with love.joystick.loadGamepadMappings.
---
--- @param guid string The GUID value to get the mapping string for.
--- @return string mappingstring A string containing the Joystick's gamepad mappings, or nil if the GUID is not recognized as a gamepad.
function love.joystick.getGamepadMappingString(guid) return "" end

--- Gets the number of connected joysticks.
---
--- @return number joystickcount The number of connected joysticks.
function love.joystick.getJoystickCount() return 0 end

--- Gets a list of connected Joysticks.
---
--- @return table joysticks The list of currently connected Joysticks.
function love.joystick.getJoysticks() return {} end

--- Loads a gamepad mappings string or file created with love.joystick.saveGamepadMappings.
--- 
--- It also recognizes any SDL gamecontroller mapping string, such as those created with Steam's Big Picture controller configure interface, or this nice database. If a new mapping is loaded for an already known controller GUID, the later version will overwrite the one currently loaded.
---
--- @param filename string The filename to load the mappings string from.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.joystick.loadGamepadMappings(filename) return  end

--- Loads a gamepad mappings string or file created with love.joystick.saveGamepadMappings.
--- 
--- It also recognizes any SDL gamecontroller mapping string, such as those created with Steam's Big Picture controller configure interface, or this nice database. If a new mapping is loaded for an already known controller GUID, the later version will overwrite the one currently loaded.
---
--- @param mappings string The mappings string to load.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.joystick.loadGamepadMappings(mappings) return  end

--- Saves the virtual gamepad mappings of all recognized as gamepads and have either been recently used or their gamepad bindings have been modified.
--- 
--- The mappings are stored as a string for use with love.joystick.loadGamepadMappings.
---
--- @param filename string The filename to save the mappings string to.
--- @return string mappings The mappings string that was written to the file.
--- @diagnostic disable-next-line: duplicate-set-field
function love.joystick.saveGamepadMappings(filename) return "" end

--- Saves the virtual gamepad mappings of all recognized as gamepads and have either been recently used or their gamepad bindings have been modified.
--- 
--- The mappings are stored as a string for use with love.joystick.loadGamepadMappings.
---
--- @return string mappings The mappings string.
--- @diagnostic disable-next-line: duplicate-set-field
function love.joystick.saveGamepadMappings() return "" end

--- Binds a virtual gamepad input to a button, axis or hat for all Joysticks of a certain type. For example, if this function is used with a GUID returned by a Dualshock 3 controller in OS X, the binding will affect Joystick:getGamepadAxis and Joystick:isGamepadDown for ''all'' Dualshock 3 controllers used with the game when run in OS X.
--- 
--- LÖVE includes built-in gamepad bindings for many common controllers. This function lets you change the bindings or add new ones for types of Joysticks which aren't recognized as gamepads by default.
--- 
--- The virtual gamepad buttons and axes are designed around the Xbox 360 controller layout.
---
--- @param guid string The OS-dependent GUID for the type of Joystick the binding will affect.
--- @param button GamepadButton The virtual gamepad button to bind.
--- @param inputtype JoystickInputType The type of input to bind the virtual gamepad button to.
--- @param inputindex number The index of the axis, button, or hat to bind the virtual gamepad button to.
--- @param hatdir JoystickHat The direction of the hat, if the virtual gamepad button will be bound to a hat. nil otherwise.
--- @return boolean success Whether the virtual gamepad button was successfully bound.
--- @diagnostic disable-next-line: duplicate-set-field
function love.joystick.setGamepadMapping(guid, button, inputtype, inputindex, hatdir) return true end

--- Binds a virtual gamepad input to a button, axis or hat for all Joysticks of a certain type. For example, if this function is used with a GUID returned by a Dualshock 3 controller in OS X, the binding will affect Joystick:getGamepadAxis and Joystick:isGamepadDown for ''all'' Dualshock 3 controllers used with the game when run in OS X.
--- 
--- LÖVE includes built-in gamepad bindings for many common controllers. This function lets you change the bindings or add new ones for types of Joysticks which aren't recognized as gamepads by default.
--- 
--- The virtual gamepad buttons and axes are designed around the Xbox 360 controller layout.
---
--- @param guid string The OS-dependent GUID for the type of Joystick the binding will affect.
--- @param axis GamepadAxis The virtual gamepad axis to bind.
--- @param inputtype JoystickInputType The type of input to bind the virtual gamepad axis to.
--- @param inputindex number The index of the axis, button, or hat to bind the virtual gamepad axis to.
--- @param hatdir JoystickHat The direction of the hat, if the virtual gamepad axis will be bound to a hat. nil otherwise.
--- @return boolean success Whether the virtual gamepad axis was successfully bound.
--- @diagnostic disable-next-line: duplicate-set-field
function love.joystick.setGamepadMapping(guid, axis, inputtype, inputindex, hatdir) return true end

--#endregion functions
