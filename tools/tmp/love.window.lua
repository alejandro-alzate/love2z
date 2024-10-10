--- @meta

local love = {}
love.window = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- Types of device display orientation.
--- @alias DisplayOrientation
---| "unknown"		#		Orientation cannot be determined.
---| "landscape"		#		Landscape orientation.
---| "landscapeflipped"		#		Landscape orientation (flipped).
---| "portrait"		#		Portrait orientation.
---| "portraitflipped"		#		Portrait orientation (flipped).


--- Types of fullscreen modes.
--- @alias FullscreenType
---| "desktop"		#		Sometimes known as borderless fullscreen windowed mode. A borderless screen-sized window is created which sits on top of all desktop UI elements. The window is automatically resized to match the dimensions of the desktop, and its size cannot be changed.
---| "exclusive"		#		Standard exclusive-fullscreen mode. Changes the display mode (actual resolution) of the monitor.
---| "normal"		#		Standard exclusive-fullscreen mode. Changes the display mode (actual resolution) of the monitor.


--- Types of message box dialogs. Different types may have slightly different looks.
--- @alias MessageBoxType
---| "info"		#		Informational dialog.
---| "warning"		#		Warning dialog.
---| "error"		#		Error dialog.


--#endregion enums
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Closes the window. It can be reopened with love.window.setMode.
---
--- @return nil
function love.window.close() return  end

--- Converts a number from pixels to density-independent units.
--- 
--- The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.fromPixels(1600) would return 800 in that case.
--- 
--- This function converts coordinates from pixels to the size users are expecting them to display at onscreen. love.window.toPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.
--- 
--- Most LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units.
---
--- @param pixelvalue number A number in pixels to convert to density-independent units.
--- @return number value The converted number, in density-independent units.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.fromPixels(pixelvalue) return 0 end

--- Converts a number from pixels to density-independent units.
--- 
--- The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.fromPixels(1600) would return 800 in that case.
--- 
--- This function converts coordinates from pixels to the size users are expecting them to display at onscreen. love.window.toPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.
--- 
--- Most LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units.
---
--- @param px number The x-axis value of a coordinate in pixels.
--- @param py number The y-axis value of a coordinate in pixels.
--- @return number x The converted x-axis value of the coordinate, in density-independent units.
--- @return number y The converted y-axis value of the coordinate, in density-independent units.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.fromPixels(px, py) return 0, 0 end

--- Gets the DPI scale factor associated with the window.
--- 
--- The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.getDPIScale() would return 2.0 in that case.
--- 
--- The love.window.fromPixels and love.window.toPixels functions can also be used to convert between units.
--- 
--- The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.
---
--- @return number scale The pixel scale factor associated with the window.
function love.window.getDPIScale() return 0 end

--- Gets the width and height of the desktop.
---
--- @param displayindex number The index of the display, if multiple monitors are available.
--- @return number width The width of the desktop.
--- @return number height The height of the desktop.
function love.window.getDesktopDimensions(displayindex) return 0, 0 end

--- Gets the number of connected monitors.
---
--- @return number count The number of currently connected displays.
function love.window.getDisplayCount() return 0 end

--- Gets the name of a display.
---
--- @param displayindex number The index of the display to get the name of.
--- @return string name The name of the specified display.
function love.window.getDisplayName(displayindex) return "" end

--- Gets current device display orientation.
---
--- @param displayindex number Display index to get its display orientation, or nil for default display index.
--- @return DisplayOrientation orientation Current device display orientation.
function love.window.getDisplayOrientation(displayindex) return {} end

--- Gets whether the window is fullscreen.
---
--- @return boolean fullscreen True if the window is fullscreen, false otherwise.
--- @return FullscreenType fstype The type of fullscreen mode used.
function love.window.getFullscreen() return true, {} end

--- Gets a list of supported fullscreen modes.
---
--- @param displayindex number The index of the display, if multiple monitors are available.
--- @return table modes A table of width/height pairs. (Note that this may not be in order.)
function love.window.getFullscreenModes(displayindex) return {} end

--- Gets the window icon.
---
--- @return ImageData imagedata The window icon imagedata, or nil if no icon has been set with love.window.setIcon.
function love.window.getIcon() return {} end

--- Gets the display mode and properties of the window.
---
--- @return number width Window width.
--- @return number height Window height.
--- @return table flags Table with the window properties:
function love.window.getMode() return 0, 0, {} end

--- Gets the position of the window on the screen.
--- 
--- The window position is in the coordinate space of the display it is currently in.
---
--- @return number x The x-coordinate of the window's position.
--- @return number y The y-coordinate of the window's position.
--- @return number displayindex The index of the display that the window is in.
function love.window.getPosition() return 0, 0, 0 end

--- Gets area inside the window which is known to be unobstructed by a system title bar, the iPhone X notch, etc. Useful for making sure UI elements can be seen by the user.
---
--- @return number x Starting position of safe area (x-axis).
--- @return number y Starting position of safe area (y-axis).
--- @return number w Width of safe area.
--- @return number h Height of safe area.
function love.window.getSafeArea() return 0, 0, 0, 0 end

--- Gets the window title.
---
--- @return string title The current window title.
function love.window.getTitle() return "" end

--- Gets current vertical synchronization (vsync).
---
--- @return number vsync Current vsync status. 1 if enabled, 0 if disabled, and -1 for adaptive vsync.
function love.window.getVSync() return 0 end

--- Checks if the game window has keyboard focus.
---
--- @return boolean focus True if the window has the focus or false if not.
function love.window.hasFocus() return true end

--- Checks if the game window has mouse focus.
---
--- @return boolean focus True if the window has mouse focus or false if not.
function love.window.hasMouseFocus() return true end

--- Gets whether the display is allowed to sleep while the program is running.
--- 
--- Display sleep is disabled by default. Some types of input (e.g. joystick button presses) might not prevent the display from sleeping, if display sleep is allowed.
---
--- @return boolean enabled True if system display sleep is enabled / allowed, false otherwise.
function love.window.isDisplaySleepEnabled() return true end

--- Gets whether the Window is currently maximized.
--- 
--- The window can be maximized if it is not fullscreen and is resizable, and either the user has pressed the window's Maximize button or love.window.maximize has been called.
---
--- @return boolean maximized True if the window is currently maximized in windowed mode, false otherwise.
function love.window.isMaximized() return true end

--- Gets whether the Window is currently minimized.
---
--- @return boolean minimized True if the window is currently minimized, false otherwise.
function love.window.isMinimized() return true end

--- Checks if the window is open.
---
--- @return boolean open True if the window is open, false otherwise.
function love.window.isOpen() return true end

--- Checks if the game window is visible.
--- 
--- The window is considered visible if it's not minimized and the program isn't hidden.
---
--- @return boolean visible True if the window is visible or false if not.
function love.window.isVisible() return true end

--- Makes the window as large as possible.
--- 
--- This function has no effect if the window isn't resizable, since it essentially programmatically presses the window's 'maximize' button.
---
--- @return nil
function love.window.maximize() return  end

--- Minimizes the window to the system's task bar / dock.
---
--- @return nil
function love.window.minimize() return  end

--- Causes the window to request the attention of the user if it is not in the foreground.
--- 
--- In Windows the taskbar icon will flash, and in OS X the dock icon will bounce.
---
--- @param continuous boolean Whether to continuously request attention until the window becomes active, or to do it only once.
--- @return nil
function love.window.requestAttention(continuous) return  end

--- Restores the size and position of the window if it was minimized or maximized.
---
--- @return nil
function love.window.restore() return  end

--- Sets whether the display is allowed to sleep while the program is running.
--- 
--- Display sleep is disabled by default. Some types of input (e.g. joystick button presses) might not prevent the display from sleeping, if display sleep is allowed.
---
--- @param enable boolean True to enable system display sleep, false to disable it.
--- @return nil
function love.window.setDisplaySleepEnabled(enable) return  end

--- Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.
---
--- @param fullscreen boolean Whether to enter or exit fullscreen mode.
--- @return boolean success True if an attempt to enter fullscreen was successful, false otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.setFullscreen(fullscreen) return true end

--- Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.
---
--- @param fullscreen boolean Whether to enter or exit fullscreen mode.
--- @param fstype FullscreenType The type of fullscreen mode to use.
--- @return boolean success True if an attempt to enter fullscreen was successful, false otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.setFullscreen(fullscreen, fstype) return true end

--- Sets the window icon until the game is quit. Not all operating systems support very large icon images.
---
--- @param imagedata ImageData The window icon image.
--- @return boolean success Whether the icon has been set successfully.
function love.window.setIcon(imagedata) return true end

--- Sets the display mode and properties of the window.
--- 
--- If width or height is 0, setMode will use the width and height of the desktop. 
--- 
--- Changing the display mode may have side effects: for example, canvases will be cleared and values sent to shaders with canvases beforehand or re-draw to them afterward if you need to.
---
--- @param width number Display width.
--- @param height number Display height.
--- @param flags table The flags table with the options:
--- @return boolean success True if successful, false otherwise.
function love.window.setMode(width, height, flags) return true end

--- Sets the position of the window on the screen.
--- 
--- The window position is in the coordinate space of the specified display.
---
--- @param x number The x-coordinate of the window's position.
--- @param y number The y-coordinate of the window's position.
--- @param displayindex number The index of the display that the new window position is relative to.
--- @return nil
function love.window.setPosition(x, y, displayindex) return  end

--- Sets the window title.
---
--- @param title string The new window title.
--- @return nil
function love.window.setTitle(title) return  end

--- Sets vertical synchronization mode.
---
--- @param vsync number VSync number: 1 to enable, 0 to disable, and -1 for adaptive vsync.
--- @return nil
function love.window.setVSync(vsync) return  end

--- Displays a message box dialog above the love window. The message box contains a title, optional text, and buttons.
---
--- @param title string The title of the message box.
--- @param message string The text inside the message box.
--- @param type MessageBoxType The type of the message box.
--- @param attachtowindow boolean Whether the message box should be attached to the love window or free-floating.
--- @return boolean success Whether the message box was successfully displayed.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.showMessageBox(title, message, type, attachtowindow) return true end

--- Displays a message box dialog above the love window. The message box contains a title, optional text, and buttons.
---
--- @param title string The title of the message box.
--- @param message string The text inside the message box.
--- @param buttonlist table A table containing a list of button names to show. The table can also contain the fields enterbutton and escapebutton, which should be the index of the default button to use when the user presses 'enter' or 'escape', respectively.
--- @param type MessageBoxType The type of the message box.
--- @param attachtowindow boolean Whether the message box should be attached to the love window or free-floating.
--- @return number pressedbutton The index of the button pressed by the user. May be 0 if the message box dialog was closed without pressing a button.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.showMessageBox(title, message, buttonlist, type, attachtowindow) return 0 end

--- Converts a number from density-independent units to pixels.
--- 
--- The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.toPixels(800) would return 1600 in that case.
--- 
--- This is used to convert coordinates from the size users are expecting them to display at onscreen to pixels. love.window.fromPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.
--- 
--- Most LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units.
---
--- @param value number A number in density-independent units to convert to pixels.
--- @return number pixelvalue The converted number, in pixels.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.toPixels(value) return 0 end

--- Converts a number from density-independent units to pixels.
--- 
--- The pixel density inside the window might be greater (or smaller) than the 'size' of the window. For example on a retina screen in Mac OS X with the highdpi window flag enabled, the window may take up the same physical size as an 800x600 window, but the area inside the window uses 1600x1200 pixels. love.window.toPixels(800) would return 1600 in that case.
--- 
--- This is used to convert coordinates from the size users are expecting them to display at onscreen to pixels. love.window.fromPixels does the opposite. The highdpi window flag must be enabled to use the full pixel density of a Retina screen on Mac OS X and iOS. The flag currently does nothing on Windows and Linux, and on Android it is effectively always enabled.
--- 
--- Most LÖVE functions return values and expect arguments in terms of pixels rather than density-independent units.
---
--- @param x number The x-axis value of a coordinate in density-independent units to convert to pixels.
--- @param y number The y-axis value of a coordinate in density-independent units to convert to pixels.
--- @return number px The converted x-axis value of the coordinate, in pixels.
--- @return number py The converted y-axis value of the coordinate, in pixels.
--- @diagnostic disable-next-line: duplicate-set-field
function love.window.toPixels(x, y) return 0, 0 end

--- Sets the display mode and properties of the window, without modifying unspecified properties.
--- 
--- If width or height is 0, updateMode will use the width and height of the desktop. 
--- 
--- Changing the display mode may have side effects: for example, canvases will be cleared. Make sure to save the contents of canvases beforehand or re-draw to them afterward if you need to.
---
--- @param width number Window width.
--- @param height number Window height.
--- @param settings table The settings table with the following optional fields. Any field not filled in will use the current value that would be returned by love.window.getMode.
--- @return boolean success True if successful, false otherwise.
function love.window.updateMode(width, height, settings) return true end

--#endregion functions
