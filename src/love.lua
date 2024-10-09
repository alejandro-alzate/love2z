--- @meta love

--- [View online documents](https://love2d.org/wiki/love)
---
---
--- LOVE2D Api.
--- The almighty beholder of all the interface for the love api.
--- @type table
love = {}

-- ************************************************************ --
-- ************************************************************ --
-- Classes
-- ************************************************************ --
-- ************************************************************ --

--- The superclass of all LÖVE types.
--- @class Object: userdata
local Object = {}

--- The superclass of all data.
--- @class Data: Object
local Data = {}


--- Specifies the type of fullscreen mode to use (exclusive or desktop). Generally the desktop is recommended, as it is less restrictive than exclusive mode on some operating systems. (Note: In 0.9.2 and earlier, use normal instead of exclusive.)
--- @alias fullscreentype
---| "desktop"			# Fullscreen Desktop mode.
---| "exclusive"		# Fullscreen Exclusive mode.
---| "normal"			# Available since LÖVE 0.9.0 and removed on 0.9.2: Old name of Fullscreen Desktop mode.

--- Love configuration table
---
--- @see love.conf
--- @class loveconf: table
local conf = {
	--- This flag determines the name of the save directory for your game. Note that you can only specify the name, not the location where it will be created:
	---
	--- ```lua
	--- t.identity = "gabe_HL3" -- Correct
	---
	--- t.identity = "c:/Users/gabe/HL3" -- Incorrect
	--- ```
	--- Alternatively love.filesystem.setIdentity can be used to set the save directory outside of the config file.
	--- @type string|nil
	identity = nil,

	--- This flag determines if game directory should be searched first then save directory (true) or otherwise (false)
	--- @type boolean
	appendidentity = false,

	--- t.version should be a string, representing the version of LÖVE for which your game was made. It should be formatted as "X.Y.Z" where X is the major release number, Y the minor, and Z the patch level. It allows LÖVE to display a warning if it isn't compatible. Its default is the version of LÖVE running.
	--- @type string
	version = "11.5",

	--- Determines whether a console should be opened alongside the game window (Windows only) or not. Note: On OSX you can get console output by running LÖVE through the terminal.
	--- @type boolean
	console = false,

	--- Sets whether the device accelerometer on iOS and Android should be exposed as a 3-axis Joystick. Disabling the accelerometer when it's not used may reduce CPU usage.
	--- @type boolean
	accelerometerjoystick = true,

	--- Sets whether the device accelerometer on iOS and Android should be exposed as a 3-axis Joystick. Disabling the accelerometer when it's not used may reduce CPU usage.
	--- @type boolean
	externalstorage = false,

	--- Determines whether gamma-correct rendering is enabled, when the system supports it.
	--- @type boolean
	gammacorrect = false,

	--- Audio options.
	--- @type table
	audio = {
		--- Request microphone permission from the user. When user allows it, love.audio.getRecordingDevices will lists recording devices available. Otherwise, love.audio.getRecordingDevices returns empty table and a message is shown to inform user when called.
		--- @type boolean
		mic = false,

		--- Sets whether background audio / music from other apps should play while LÖVE is open. See love.system.hasBackgroundMusic for more details.
		--- @type boolean
		mixwithsystem = true,
	},

	--- It is possible to defer window creation until love.window.setMode is first called in your code. To do so, set t.window = nil in love.conf (or t.screen = nil in older versions.) If this is done, LÖVE may crash if any function from love.graphics is called before the first love.window.setMode in your code.
	---
	--- The t.window table was named t.screen in versions prior to 0.9.0. The t.screen table doesn't exist in love.conf in 0.9.0, and the t.window table doesn't exist in love.conf in 0.8.0. This means love.conf will fail to execute (therefore it will fall back to default values) if care is not taken to use the correct table for the LÖVE version being used.
	--- @type table
	window = {

		--- Sets the title of the window the game is in. Alternatively love.window.setTitle can be used to change the window title outside of the config file.
		--- @type string
		title = "Untitled",

		--- A filepath to an image to use as the window's icon. Not all operating systems support very large icon images. The icon can also be changed with love.window.setIcon.
		--- @type string|nil
		icon = nil,

		--- Sets the window's dimensions. If these flags are set to 0 LÖVE automatically uses the user's desktop dimensions.
		--- @type number
		width = 800,

		--- Sets the window's dimensions. If these flags are set to 0 LÖVE automatically uses the user's desktop dimensions.
		--- @type number
		height = 600,

		--- Removes all border visuals from the window. Note that the effects may wary between operating systems.
		--- @type boolean
		borderless = false,

		--- If set to true this allows the user to resize the game's window.
		--- @type boolean
		resizable = false,

		--- Sets the minimum width and height for the game's window if it can be resized by the user. If you set lower values to window.width and window.height LÖVE will always favor the minimum dimensions set via window.minwidth and window.minheight.
		--- @type number
		minwidth = 1,

		--- Sets the minimum width and height for the game's window if it can be resized by the user. If you set lower values to window.width and window.height LÖVE will always favor the minimum dimensions set via window.minwidth and window.minheight.
		--- @type number
		minheight = 1,

		--- Whether to run the game in fullscreen (true) or windowed (false) mode. The fullscreen can also be toggled via love.window.setFullscreen or love.window.setMode.
		--- @type boolean
		fullscreen = false,

		--- Specifies the type of fullscreen mode to use (normal or desktop). Generally the desktop is recommended, as it is less restrictive than normal mode on some operating systems.
		--- @type fullscreentype
		fullscreentype = "desktop",

		--- Sets whetever to enable or disable automatic DPI scaling.
		--- @type boolean
		usedpiscale = true,

		--- Enables or deactivates vertical synchronization. Vsync tries to keep the game at a steady framerate and can prevent issues like screen tearing. It is recommended to keep vsync activated if you don't know about the possible implications of turning it off. Before LÖVE 11.0, this value was boolean (true or false). Since LÖVE 11.0, this value is number (1 to enable vsync, 0 to disable vsync, -1 to use adaptive vsync when supported).
		---
		--- Note that in iOS, vertical synchronization is always enabled and cannot be changed.
		--- @type number|boolean
		vsync = true,

		--- The number of bits per sample in the depth buffer (16/24/32, default nil)
		--- @type number|nil
		depth = nil,

		--- Then number of bits per sample in the depth buffer (generally 8, default nil)
		--- @type number|nil
		stencil = nil,

		--- The number of samples to use with multi-sampled antialiasing.
		--- @type number
		msaa = 0,

		--- The index of the display to show the window in, if multiple monitors are available.
		--- @type number
		display = 1,

		--- See love.window.getPixelScale, love.window.toPixels, and love.window.fromPixels. It is recommended to keep this option disabled if you can't test your game on a Mac or iOS system with a Retina display, because code will need tweaking to make sure things look correct.
		--- @type boolean
		highdpi = false,

		--- Determines the position of the window on the user's screen. Alternatively love.window.setPosition can be used to change the position on the fly.
		--- @type number|nil
		x = nil,

		--- Determines the position of the window on the user's screen. Alternatively love.window.setPosition can be used to change the position on the fly.
		--- @type number|nil
		y = nil,
	},

	--- Module options.
	--- @type table
	modules = {
		--- Enable the audio module.
		--- @type boolean
		audio = true,

		--- Enab Enable thele the event module. event module.
		--- @type boolean
		event = true,

		--- Enable the graphics module.
		--- @type boolean
		graphics = true,

		--- Enable the image module.
		--- @type boolean
		image = true,

		--- Enable the joystick module.
		--- @type boolean
		joystick = true,

		--- Enable the keyboard module.
		--- @type boolean
		keyboard = true,

		--- Enable the math module.
		--- @type boolean
		math = true,

		--- Enable the mouse module.
		--- @type boolean
		mouse = true,

		--- Enable the physics module.
		--- @type boolean
		physics = true,

		--- Enable the sound module.
		--- @type boolean
		sound = true,

		--- Enable the system module.
		--- @type boolean
		system = true,

		--- Enable the timer module.
		--- @type boolean
		timer = true,

		--- Enable the touch module.
		--- @type boolean
		touch = true,

		--- Enable the video module.
		--- @type boolean
		video = true,

		--- Enable the window module.
		--- @type boolean
		window = true,

		--- Enable the thread module.
		--- @type boolean
		thread = true,
	},
}

-- ************************************************************ --
-- ************************************************************ --
-- Methods
-- ************************************************************ --
-- ************************************************************ --

--- Destroys the object's Lua reference. The object will be completely deleted if it's not referenced by any other LÖVE object or thread.
---
--- This method can be used to immediately clean up resources without waiting for Lua's garbage collector.
--- @return boolean success True if the object was released by this call, false if it had been previously released.
function Object:release() return true end

--- Gets the type of the object as a string.
--- @return string The type as a string.
function Object:type() return "" end

--- Checks whether an object is of a certain type. If the object has the type with the specified name in its hierarchy, this function will return true.
---comment
---@param name string The name of the type to check for.
---@return boolean b True if the object is of the specified type, false otherwise.
function Object:typeOf(name) return true end

--- Creates a new copy of the Data object.
--- @return Data clone The new copy.
function Data:clone() return Data end

--- Gets an FFI pointer to the Data.
---
--- This function should be preferred instead of Data:getPointer because the latter uses light userdata which can't store more all possible memory addresses on some new ARM64 architectures, when LuaJIT is used.
--- @return integer pointer A raw void* pointer to the Data, or nil if FFI is unavailable.
function Data:getFFIPointer() return 0x00000000 end

--- Gets a pointer to the Data. Can be used with libraries such as LuaJIT's FFI.
--- @return lightuserdata pointer A raw pointer to the Data.
function Data:getPointer() return {} end

--- Gets the Data's size in bytes.
--- @return number size The size of the Data in bytes.
function Data:getSize() return 0 end

--- Gets the full Data as a string.
--- @return string data The raw data.
function Data:getString() return "" end

-- ************************************************************ --
-- ************************************************************ --
-- Fields
-- ************************************************************ --
-- ************************************************************ --

--- The major version of LÖVE, i.e. 11 for version 11.5.
--- @type number
love._version_major = 11

---The major version of LÖVE, i.e. 5 for version 11.5.
--- @type number
love._version_minor = 5

--- The revision version of LÖVE, i.e. 0 for version 11.5.~~*0*~~.
---
--- ### Notes:
--- You may noticed that this is not present on modern love display versions.
---
--- This feature have been deprecated, but the field it's still present.
--- > [ale...: so a legacy feature](https://discord.com/channels/329400828920070144/329400828920070144/1293375242231873547)
---
--- > [Sas...: we might choose to use it in the future. Currently we do not](https://discord.com/channels/329400828920070144/329400828920070144/1293375327703269377)
--- @type number
love._version_revision = 0


-- ************************************************************ --
-- ************************************************************ --
-- Enums
-- ************************************************************ --
-- ************************************************************ --


-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets the current running version of LÖVE.
---
--- ### Note:
--- For LÖVE versions below 0.9.1, the following variables can be used instead (and still work in 0.9.2 and newer):
--- - `love._version_major`
--- - `love._version_minor`
--- - `love._version_revision`
---@return number major
---@return number minor
---@return number revision
---@return string codename
function love.getVersion() return 11, 5, 0, "Mysterious Mysteries" end

--- Gets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.
--- When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
--- @return boolean compatible Whether deprecation output is enabled.
function love.hasDeprecationOutput() return true end

--- Gets whether the given version is compatible with the current running version of LÖVE.
--- @param version string The version to check (for example '11.3' or '0.10.2').
--- @return boolean compatible Whether deprecation output is enabled.
function love.isVersionCompatible(version) return true end

--- Gets whether the given version is compatible with the current running version of LÖVE.
---@param major string The major version to check (for example 11 for 11.3 or 0 for 0.10.2).
---@param minor string The minor version to check (for example 3 for 11.3 or 10 for 0.10.2).
---@param revision string The revision of version to check (for example 0 for 11.3 or 2 for 0.10.2).
--- @return boolean compatible Whether deprecation output is enabled.
function love.isVersionCompatible(major, minor, revision) return true end

---Sets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.
---When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---@param enable boolean Whether to enable or disable deprecation output.
function love.setDeprecationOutput(enable) end

-- ************************************************************ --
-- ************************************************************ --
-- Callbacks
-- ************************************************************ --
-- ************************************************************ --

--- If a file called conf.lua is present in your game folder (or .love file), it is run before the LÖVE modules are loaded. You can use this file to overwrite the love.conf function, which is later called by the LÖVE 'boot' script. Using the love.conf function, you can set some configuration options, and change things like the default size of the window, which modules are loaded, and other stuff.
--- @param t loveconf
--- @return table
function love.conf(t) return {} end

--- Callback function triggered when a directory is dragged and dropped onto the window.
---
--- Paths passed into this callback are able to be used with love.filesystem.mount, which is the only way to get read access via love.filesystem to the dropped directory. love.filesystem.mount does not generally accept other full platform-dependent directory paths that haven\'t been dragged and dropped onto the window.
--- @param path string The full platform-dependent path to the directory. It can be used as an argument to love.filesystem.mount, in order to gain read access to the directory with love.filesystem.
--- @return nil
function love.directorydropped(path) end

--- Called when the device display orientation changed, for example, user rotated their phone 180 degrees.
--- @return nil
function love.displayrotated() end

--- Callback function used to draw on the screen every frame.
function love.draw() end

--- The error handler, used to display error messages.
function love.errorhandler() end

--- Callback function triggered when a file is dragged and dropped onto the window.
function love.filedropped() end

--- Callback function triggered when window receives or loses focus.
function love.focus() end

--- Called when a Joystick's virtual gamepad axis is moved.
function love.gamepadaxis() end

--- Called when a Joystick's virtual gamepad button is pressed.
function love.gamepadpressed() end

--- Called when a Joystick's virtual gamepad button is released.
function love.gamepadreleased() end

--- Called when a Joystick is connected.
function love.joystickadded() end

--- Called when a joystick axis moves.
function love.joystickaxis() end

--- Called when a joystick hat direction changes.
function love.joystickhat() end

--- Called when a joystick button is pressed.
function love.joystickpressed() end

--- Called when a joystick button is released.
function love.joystickreleased() end

--- Called when a Joystick is disconnected.
function love.joystickremoved() end

--- Callback function triggered when a key is pressed.
function love.keypressed() end

--- Callback function triggered when a keyboard key is released.
function love.keyreleased() end

--- This function is called exactly once at the beginning of the game.
function love.load() end

--- Callback function triggered when the system is running out of memory on mobile devices.
---
--- Mobile operating systems may forcefully kill the game if it uses too much memory, so any non-critical resource should be removed if possible (by setting all variables referencing the resources to '''nil'''), when this event is triggered. Sounds and images in particular tend to use the most memory.
function love.lowmemory() end

--- Callback function triggered when window receives or loses mouse focus.
function love.mousefocus() end

--- Callback function triggered when the mouse is moved.
function love.mousemoved() end

--- Callback function triggered when a mouse button is pressed.
function love.mousepressed() end

--- Callback function triggered when a mouse button is released.
function love.mousereleased() end

--- Callback function triggered when the game is closed.
function love.quit() end

--- Called when the window is resized, for example if the user resizes the window, or if love.window.setMode is called with an unsupported width or height in fullscreen and the window chooses the closest appropriate size.
function love.resize() end

--- The main function, containing the main loop. A sensible default is used when left out.
function love.run() end

--- Called when the candidate text for an IME (Input Method Editor) has changed.
---
--- The candidate text is not the final text that the user will eventually choose. Use love.textinput for that.
function love.textedited() end

--- Called when text has been entered by the user. For example if shift-2 is pressed on an American keyboard layout, the text '@' will be generated.
function love.textinput() end

--- Callback function triggered when a Thread encounters an error.
function love.threaderror() end

--- Callback function triggered when a touch press moves inside the touch screen.
function love.touchmoved() end

--- Callback function triggered when the touch screen is touched.
function love.touchpressed() end

--- Callback function triggered when the touch screen stops being touched.
function love.touchreleased() end

--- Callback function used to update the state of the game every frame.
function love.update() end

--- Callback function triggered when window is minimized/hidden or unminimized by the user.
function love.visible() end

--- Callback function triggered when the mouse wheel is moved.
function love.wheelmoved() end
