--- @meta

local love = {}
love.mouse = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- Types of hardware cursors.
--- @alias CursorType
---| "image"			#		The cursor is using a custom image.
---| "arrow"			#		An arrow pointer.
---| "ibeam"			#		An I-beam, normally used when mousing over editable or selectable text.
---| "wait"			#		Wait graphic.
---| "waitarrow"			#		Small wait cursor with an arrow pointer.
---| "crosshair"			#		Crosshair symbol.
---| "sizenwse"			#		Double arrow pointing to the top-left and bottom-right.
---| "sizenesw"			#		Double arrow pointing to the top-right and bottom-left.
---| "sizewe"			#		Double arrow pointing left and right.
---| "sizens"			#		Double arrow pointing up and down.
---| "sizeall"			#		Four-pointed arrow pointing up, down, left, and right.
---| "no"			#		Slashed circle or crossbones.
---| "hand"			#		Hand symbol.


--#endregion enums
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets the current Cursor.
---
--- @return Cursor cursor The current cursor, or nil if no cursor is set.
function love.mouse.getCursor() return {} end

--- Returns the current position of the mouse.
---
--- @return number x The position of the mouse along the x-axis.
--- @return number y The position of the mouse along the y-axis.
function love.mouse.getPosition() return 0, 0 end

--- Gets whether relative mode is enabled for the mouse.
--- 
--- If relative mode is enabled, the cursor is hidden and doesn't move when the mouse does, but relative mouse motion events are still generated via love.mousemoved. This lets the mouse move in any direction indefinitely without the cursor getting stuck at the edges of the screen.
--- 
--- The reported position of the mouse is not updated while relative mode is enabled, even when relative mouse motion events are generated.
---
--- @return boolean enabled True if relative mode is enabled, false if it's disabled.
function love.mouse.getRelativeMode() return true end

--- Gets a Cursor object representing a system-native hardware cursor.
--- 
--- Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.
---
--- @param ctype CursorType The type of system cursor to get. 
--- @return Cursor cursor The Cursor object representing the system cursor type.
function love.mouse.getSystemCursor(ctype) return {} end

--- Returns the current x-position of the mouse.
---
--- @return number x The position of the mouse along the x-axis.
function love.mouse.getX() return 0 end

--- Returns the current y-position of the mouse.
---
--- @return number y The position of the mouse along the y-axis.
function love.mouse.getY() return 0 end

--- Gets whether cursor functionality is supported.
--- 
--- If it isn't supported, calling love.mouse.newCursor and love.mouse.getSystemCursor will cause an error. Mobile devices do not support cursors.
---
--- @return boolean supported Whether the system has cursor functionality.
function love.mouse.isCursorSupported() return true end

--- Checks whether a certain mouse button is down.
--- 
--- This function does not detect mouse wheel scrolling; you must use the love.wheelmoved (or love.mousepressed in version 0.9.2 and older) callback for that. 
---
--- @param button number The index of a button to check. 1 is the primary mouse button, 2 is the secondary mouse button and 3 is the middle button. Further buttons are mouse dependant.
--- @param ... number Additional button numbers to check.
--- @return boolean down True if any specified button is down.
function love.mouse.isDown(button, ...) return true end

--- Checks if the mouse is grabbed.
---
--- @return boolean grabbed True if the cursor is grabbed, false if it is not.
function love.mouse.isGrabbed() return true end

--- Checks if the cursor is visible.
---
--- @return boolean visible True if the cursor to visible, false if the cursor is hidden.
function love.mouse.isVisible() return true end

--- Creates a new hardware Cursor object from an image file or ImageData.
--- 
--- Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.
--- 
--- The hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle.
---
--- @param imageData ImageData The ImageData to use for the new Cursor.
--- @param hotx number The x-coordinate in the ImageData of the cursor's hot spot.
--- @param hoty number The y-coordinate in the ImageData of the cursor's hot spot.
--- @return Cursor cursor The new Cursor object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.mouse.newCursor(imageData, hotx, hoty) return {} end

--- Creates a new hardware Cursor object from an image file or ImageData.
--- 
--- Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.
--- 
--- The hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle.
---
--- @param filename string Path to the image to use for the new Cursor.
--- @param hotx number The x-coordinate in the image of the cursor's hot spot.
--- @param hoty number The y-coordinate in the image of the cursor's hot spot.
--- @return Cursor cursor The new Cursor object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.mouse.newCursor(filename, hotx, hoty) return {} end

--- Creates a new hardware Cursor object from an image file or ImageData.
--- 
--- Hardware cursors are framerate-independent and work the same way as normal operating system cursors. Unlike drawing an image at the mouse's current coordinates, hardware cursors never have visible lag between when the mouse is moved and when the cursor position updates, even at low framerates.
--- 
--- The hot spot is the point the operating system uses to determine what was clicked and at what position the mouse cursor is. For example, the normal arrow pointer normally has its hot spot at the top left of the image, but a crosshair cursor might have it in the middle.
---
--- @param fileData FileData Data representing the image to use for the new Cursor.
--- @param hotx number The x-coordinate in the image of the cursor's hot spot.
--- @param hoty number The y-coordinate in the image of the cursor's hot spot.
--- @return Cursor cursor The new Cursor object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.mouse.newCursor(fileData, hotx, hoty) return {} end

--- Sets the current mouse cursor.
---
--- @param cursor Cursor The Cursor object to use as the current mouse cursor.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.mouse.setCursor(cursor) return  end

--- Sets the current mouse cursor.
---
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.mouse.setCursor() return  end

--- Grabs the mouse and confines it to the window.
---
--- @param grab boolean True to confine the mouse, false to let it leave the window.
--- @return nil
function love.mouse.setGrabbed(grab) return  end

--- Sets the current position of the mouse. Non-integer values are floored.
---
--- @param x number The new position of the mouse along the x-axis.
--- @param y number The new position of the mouse along the y-axis.
--- @return nil
function love.mouse.setPosition(x, y) return  end

--- Sets whether relative mode is enabled for the mouse.
--- 
--- When relative mode is enabled, the cursor is hidden and doesn't move when the mouse does, but relative mouse motion events are still generated via love.mousemoved. This lets the mouse move in any direction indefinitely without the cursor getting stuck at the edges of the screen.
--- 
--- The reported position of the mouse may not be updated while relative mode is enabled, even when relative mouse motion events are generated.
---
--- @param enable boolean True to enable relative mode, false to disable it.
--- @return nil
function love.mouse.setRelativeMode(enable) return  end

--- Sets the current visibility of the cursor.
---
--- @param visible boolean True to set the cursor to visible, false to hide the cursor.
--- @return nil
function love.mouse.setVisible(visible) return  end

--- Sets the current X position of the mouse.
--- 
--- Non-integer values are floored.
---
--- @param x number The new position of the mouse along the x-axis.
--- @return nil
function love.mouse.setX(x) return  end

--- Sets the current Y position of the mouse.
--- 
--- Non-integer values are floored.
---
--- @param y number The new position of the mouse along the y-axis.
--- @return nil
function love.mouse.setY(y) return  end

--#endregion functions
