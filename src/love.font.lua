--- @meta

local love = {}
love.font = {}

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
function love.font.newBMFontRasterizer(imageData, glyphs, dpiscale) return Rasterizer end

--- Creates a new BMFont Rasterizer.
---
--- @param fileName string The path to file containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newBMFontRasterizer(fileName, glyphs, dpiscale) return Rasterizer end

--- Creates a new GlyphData.
---
--- @param rasterizer Rasterizer The Rasterizer containing the font.
--- @param glyph number The character code of the glyph.
--- @return nil
function love.font.newGlyphData(rasterizer, glyph) return  end

--- Creates a new Image Rasterizer.
---
--- @param imageData ImageData Font image data.
--- @param glyphs string String containing font glyphs.
--- @param extraSpacing number Font extra spacing.
--- @param dpiscale number Font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
function love.font.newImageRasterizer(imageData, glyphs, extraSpacing, dpiscale) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param filename string The font file.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(filename) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param data FileData The FileData of the font file.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(data) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(size, hinting, dpiscale) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param fileName string Path to font file.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(fileName, size, hinting, dpiscale) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param fileData FileData File data containing font.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(fileData, size, hinting, dpiscale) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param imageData ImageData The image data containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(imageData, glyphs, dpiscale) return Rasterizer end

--- Creates a new Rasterizer.
---
--- @param fileName string The path to file containing the drawable pictures of font glyphs.
--- @param glyphs string The sequence of glyphs in the ImageData.
--- @param dpiscale number DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newRasterizer(fileName, glyphs, dpiscale) return Rasterizer end

--- Creates a new TrueType Rasterizer.
---
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newTrueTypeRasterizer(size, hinting, dpiscale) return Rasterizer end

--- Creates a new TrueType Rasterizer.
---
--- @param fileName string Path to font file.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newTrueTypeRasterizer(fileName, size, hinting, dpiscale) return Rasterizer end

--- Creates a new TrueType Rasterizer.
---
--- @param fileData FileData File data containing font.
--- @param size number The font size.
--- @param hinting HintingMode True Type hinting mode.
--- @param dpiscale number The font DPI scale.
--- @return Rasterizer rasterizer The rasterizer.
--- @diagnostic disable-next-line: duplicate-set-field
function love.font.newTrueTypeRasterizer(fileData, size, hinting, dpiscale) return Rasterizer end

--#endregion functions
