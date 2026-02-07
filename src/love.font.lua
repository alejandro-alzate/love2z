--- @meta

local love = {}
love.font = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- True Type hinting mode.
--- @alias HintingMode
---| "normal"			#		Default hinting. Should be preferred for typical antialiased fonts.
---| "light"			#		Results in fuzzier text but can sometimes preserve the original glyph shapes of the text better than normal hinting.
---| "mono"			#		Results in aliased / unsmoothed text with either full opacity or completely transparent pixels. Should be used when antialiasing is not desired for the font.
---| "none"			#		Disables hinting for the font. Results in fuzzier text.


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- A GlyphData represents a drawable symbol of a font Rasterizer.
--- @class GlyphData: Data, Object
local GlyphData = {}

--- Gets glyph advance.
---
--- @return number advance Glyph advance.
function GlyphData:getAdvance() return 0 end

--- Gets glyph bearing.
---
--- @return number bx Glyph bearing X.
--- @return number by Glyph bearing Y.
function GlyphData:getBearing() return 0, 0 end

--- Gets glyph bounding box.
---
--- @return number x Glyph position x.
--- @return number y Glyph position y.
--- @return number width Glyph width.
--- @return number height Glyph height.
function GlyphData:getBoundingBox() return 0, 0, 0, 0 end

--- Gets glyph dimensions.
---
--- @return number width Glyph width.
--- @return number height Glyph height.
function GlyphData:getDimensions() return 0, 0 end

--- Gets glyph pixel format.
---
--- @return PixelFormat format Glyph pixel format.
function GlyphData:getFormat() return {} end

--- Gets glyph number.
---
--- @return number glyph Glyph number.
function GlyphData:getGlyph() return 0 end

--- Gets glyph string.
---
--- @return string glyph Glyph string.
function GlyphData:getGlyphString() return "" end

--- Gets glyph height.
---
--- @return number height Glyph height.
function GlyphData:getHeight() return 0 end

--- Gets glyph width.
---
--- @return number width Glyph width.
function GlyphData:getWidth() return 0 end

--- A Rasterizer handles font rendering, containing the font data (image or TrueType font) and drawable glyphs.
--- @class Rasterizer: Object
local Rasterizer = {}

--- Gets font advance.
---
--- @return number advance Font advance.
function Rasterizer:getAdvance() return 0 end

--- Gets ascent height.
---
--- @return number height Ascent height.
function Rasterizer:getAscent() return 0 end

--- Gets descent height.
---
--- @return number height Descent height.
function Rasterizer:getDescent() return 0 end

--- Gets number of glyphs in font.
---
--- @return number count Glyphs count.
function Rasterizer:getGlyphCount() return 0 end

--- Gets glyph data of a specified glyph.
---
--- @param glyph string Glyph
--- @return GlyphData glyphData Glyph data
--- @diagnostic disable-next-line: duplicate-set-field
function Rasterizer:getGlyphData(glyph) return {} end

--- Gets glyph data of a specified glyph.
---
--- @param glyphNumber number Glyph number
--- @return GlyphData glyphData Glyph data
--- @diagnostic disable-next-line: duplicate-set-field
function Rasterizer:getGlyphData(glyphNumber) return {} end

--- Gets font height.
---
--- @return number height Font height
function Rasterizer:getHeight() return 0 end

--- Gets line height of a font.
---
--- @return number height Line height of a font.
function Rasterizer:getLineHeight() return 0 end

--- Checks if font contains specified glyphs.
---
--- @param glyph1 string or number Glyph
--- @param glyph2 string or number Glyph
--- @param ... string or number Additional glyphs
--- @return boolean hasGlyphs Whatever font contains specified glyphs.
function Rasterizer:hasGlyphs(glyph1, glyph2, ...) return true end

--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Creates a new BMFont Rasterizer.
---
--- @param imageData ImageData The image data containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newBMFontRasterizer(imageData, glyphs, dpiscale) return {} end

--- Creates a new BMFont Rasterizer.
---
--- @param fileName string The path to file containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newBMFontRasterizer(fileName, glyphs, dpiscale) return {} end

--- Creates a new GlyphData.
---
--- @param rasterizer Rasterizer The Rasterizer containing the font.
--- @param glyph number The character code of the glyph.
--- @return nil
function love.font.newGlyphData(rasterizer, glyph) return end

--- Creates a new Image Rasterizer.
---
--- @param imageData ImageData Font image data.
--- @param glyphs string String containing font glyphs.
--- @param extraSpacing number Font extra spacing.
--- @param dpiscale number Font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
function love.font.newImageRasterizer(imageData, glyphs, extraSpacing, dpiscale) return {} end

--- Creates a new Rasterizer.
---
--- @param filename string The font file.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(filename) return {} end

--- Creates a new Rasterizer.
---
--- @param data FileData The FileData of the font file.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(data) return {} end

--- Creates a new Rasterizer.
---
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(size, hinting, dpiscale) return {} end

--- Creates a new Rasterizer.
---
--- @param fileName string Path to font file.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(fileName, size, hinting, dpiscale) return {} end

--- Creates a new Rasterizer.
---
--- @param fileData FileData File data containing font.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(fileData, size, hinting, dpiscale) return {} end

--- Creates a new Rasterizer.
---
--- @param imageData ImageData The image data containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(imageData, glyphs, dpiscale) return {} end

--- Creates a new Rasterizer.
---
--- @param fileName string The path to file containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(fileName, glyphs, dpiscale) return {} end

--- Creates a new TrueType Rasterizer.
---
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newTrueTypeRasterizer(size, hinting, dpiscale) return {} end

--- Creates a new TrueType Rasterizer.
---
--- @param fileName string Path to font file.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newTrueTypeRasterizer(fileName, size, hinting, dpiscale) return {} end

--- Creates a new TrueType Rasterizer.
---
--- @param fileData FileData File data containing font.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newTrueTypeRasterizer(fileData, size, hinting, dpiscale) return {} end

--#endregion functions
