--- @meta

local love = {}
love.touch = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --



--#endregion enums
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Gets the current position of the specified touch-press, in pixels.
---
--- @param id light userdata The identifier of the touch-press. Use love.touch.getTouches, love.touchpressed, or love.touchmoved to obtain touch id values.
--- @return number x The position along the x-axis of the touch-press inside the window, in pixels.
--- @return number y The position along the y-axis of the touch-press inside the window, in pixels.
function love.touch.getPosition(id) return 0, 0 end

--- Gets the current pressure of the specified touch-press.
---
--- @param id light userdata The identifier of the touch-press. Use love.touch.getTouches, love.touchpressed, or love.touchmoved to obtain touch id values.
--- @return number pressure The pressure of the touch-press. Most touch screens aren't pressure sensitive, in which case the pressure will be 1.
function love.touch.getPressure(id) return 0 end

--- Gets a list of all active touch-presses.
---
--- @return table touches A list of active touch-press id values, which can be used with love.touch.getPosition.
function love.touch.getTouches() return {} end

--#endregion functions
