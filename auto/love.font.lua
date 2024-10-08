--- Provides functionality for drawing and manipulating text.
---
--- [View online documents](https://love2d.org/wiki/love.font)
love.font = {}

-- ************************************************************ --
-- ************************************************************ --
-- Classes
-- ************************************************************ --
-- ************************************************************ --

--- @class Font: Object
---| A Font is a representation of a font file.

-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Creates a new Font from a file.
---
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
---
--- @param filename string The filepath to the font file.
--- @return Font font The new font.
--- @return string message An error message if the font could not be loaded.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.new(filename) return {}, "" end

--- Creates a new Font from a file with a specified size.
---
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
---
--- @param filename string The filepath to the font file.
--- @param size number The size of the font in pixels.
--- @return Font font The new font.
--- @return string message An error message if the font could not be loaded.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.new(filename, size) return {}, "" end

--- Creates a new Font from a file with a specified size and a specific resolution.
---
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
---
--- @param filename string The filepath to the font file.
--- @param size number The size of the font in pixels.
--- @param resolution number The resolution of the font, in pixels per unit.
--- @return Font font The new font.
--- @return string message An error message if the font could not be loaded.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.new(filename, size, resolution) return {}, "" end

--- Creates a new Font from a file with a specified size, a specific resolution and a specific glyph range.
---
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
---
--- @param filename string The filepath to the font file.
--- @param size number The size of the font in pixels.
--- @param resolution number The resolution of the font, in pixels per unit.
--- @param glyphRange string The glyph range.
--- @return Font font The new font.
--- @return string message An error message if the font could not be loaded.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.new(filename, size, resolution, glyphRange) return {}, "" end

--- Returns the ascent of the font in pixels.
---
--- The ascent is the distance from the baseline to the top of the glyphs.
---
--- @param font Font The font to get the ascent from.
--- @return number ascent The ascent of the font in pixels.
--- @nodiscard
function love.font.getAscent(font) return 0 end

--- Returns the descent of the font in pixels.
---
--- The descent is the distance from the baseline to the bottom of the glyphs.
---
--- @param font Font The font to get the descent from.
--- @return number descent The descent of the font in pixels.
--- @nodiscard
function love.font.getDescent(font) return 0 end

--- Returns the height of the font in pixels.
---
--- This is the distance from the top of the glyphs to the bottom of the glyphs.
---
--- @param font Font The font to get the height from.
--- @return number height The height of the font in pixels.
--- @nodiscard
function love.font.getHeight(font) return 0 end

--- Returns the line height of the font in pixels.
---
--- This is the distance from the baseline of one line to the baseline of the next.
---
--- @param font Font The font to get the line height from.
--- @return number lineHeight The line height of the font in pixels.
--- @nodiscard
function love.font.getLineHeight(font) return 0 end

--- Returns the resolution of the font in pixels per unit.
---
--- The resolution is the number of pixels that are used to represent one unit of the font.
---
--- @param font Font The font to get the resolution from.
--- @return number resolution The resolution of the font in pixels per unit.
--- @nodiscard
function love.font.getResolution(font) return 0 end

--- Returns the size of the font in pixels.
---
--- @param font Font The font to get the size from.
--- @return number size The size of the font in pixels.
--- @nodiscard
function love.font.getSize(font) return 0 end

--- Returns the width of the specified string in pixels.
---
--- @param font Font The font to use.
--- @param string string The string to measure.
--- @return number width The width of the string in pixels.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.getWidth(font, string) return 0 end

--- Returns the width of the specified string in pixels, based on the specified wrapping width.
---
--- @param font Font The font to use.
--- @param string string The string to measure.
--- @param wrapWidth number The wrapping width in pixels.
--- @return number width The width of the string in pixels.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.getWidth(font, string, wrapWidth) return 0 end

--- Returns the width of the specified string in pixels, based on the specified wrapping width and maximum line height.
---
--- @param font Font The font to use.
--- @param string string The string to measure.
--- @param wrapWidth number The wrapping width in pixels.
--- @param maxLineHeight number The maximum line height in pixels.
--- @return number width The width of the string in pixels.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.getWidth(font, string, wrapWidth, maxLineHeight) return 0 end

--- Returns the width of the specified string in pixels, based on the specified wrapping width, maximum line height, and alignment.
---
--- @param font Font The font to use.
--- @param string string The string to measure.
--- @param wrapWidth number The wrapping width in pixels.
--- @param maxLineHeight number The maximum line height in pixels.
--- @param align string The alignment.
--- @return number width The width of the string in pixels.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.getWidth(font, string, wrapWidth, maxLineHeight, align) return 0 end

--- Returns the width of the specified string in pixels, based on the specified wrapping width, maximum line height, alignment, and additional parameters.
---
--- @param font Font The font to use.
--- @param string string The string to measure.
--- @param wrapWidth number The wrapping width in pixels.
--- @param maxLineHeight number The maximum line height in pixels.
--- @param align string The alignment.
--- @param ... any Additional parameters.
--- @return number width The width of the string in pixels.
--- @nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.font.getWidth(font, string, wrapWidth, maxLineHeight, align, ...) return 0 end

--- Returns the width of the specified string in pixels, based on the specified wrapping width and alignment.
---
--- @param font Font The font to use.
--- @param string string The string to measure.
--- @param wrapWidth number The wrapping width in pixels.
--- @param align string The alignment.
--- @return number width The width of the string in pixels.
--- @nodiscard
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.getWidth(font, string, wrapWidth, align) return 0 end
