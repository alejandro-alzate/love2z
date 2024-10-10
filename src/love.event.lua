--- @meta

local love = {}
love.event = {}

--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Clears the event queue.
---
--- @return nil
function love.event.clear() return  end

--- Returns an iterator for messages in the event queue.
---
--- @return function i Iterator function usable in a for loop.
function love.event.poll() return function() end end

--- Pump events into the event queue.
--- 
--- This is a low-level function, and is usually not called by the user, but by love.run.
--- 
--- Note that this does need to be called for any OS to think you're still running,
--- 
--- and if you want to handle OS-generated events at all (think callbacks).
---
--- @return nil
function love.event.pump() return  end

--- Adds an event to the event queue.
--- 
--- From 0.10.0 onwards, you may pass an arbitrary amount of arguments with this function, though the default callbacks don't ever use more than six.
---
--- @param n Event The name of the event.
--- @param a Variant First event argument.
--- @param b Variant Second event argument.
--- @param c Variant Third event argument.
--- @param d Variant Fourth event argument.
--- @param e Variant Fifth event argument.
--- @param f Variant Sixth event argument.
--- @param ... Variant Further event arguments may follow.
--- @return nil
function love.event.push(n, a, b, c, d, e, f, ...) return  end

--- Adds the quit event to the queue.
--- 
--- The quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback.
---
--- @param exitstatus number The program exit status to use when closing the application.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.event.quit(exitstatus) return  end

--- Adds the quit event to the queue.
--- 
--- The quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback.
---
--- @param 'restart' string Tells the default love.run to exit and restart the game without relaunching the executable.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.event.quit('restart') return  end

--- Like love.event.poll(), but blocks until there is an event in the queue.
---
--- @return Event n The name of event.
--- @return Variant a First event argument.
--- @return Variant b Second event argument.
--- @return Variant c Third event argument.
--- @return Variant d Fourth event argument.
--- @return Variant e Fifth event argument.
--- @return Variant f Sixth event argument.
--- @return Variant ... Further event arguments may follow.
function love.event.wait() return Event, Variant, Variant, Variant, Variant, Variant, Variant, Variant end

--#endregion functions
