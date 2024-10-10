--- @meta

local love = {}
love.image = {}

--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Determines whether a file can be loaded as CompressedImageData.
---
--- @param filename string The filename of the potentially compressed image file.
--- @return boolean compressed Whether the file can be loaded as CompressedImageData or not.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.isCompressed(filename) return true end

--- Determines whether a file can be loaded as CompressedImageData.
---
--- @param fileData FileData A FileData potentially containing a compressed image.
--- @return boolean compressed Whether the FileData can be loaded as CompressedImageData or not.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.isCompressed(fileData) return true end

--- Create a new CompressedImageData object from a compressed image file. LÖVE supports several compressed texture formats, enumerated in the CompressedImageFormat page.
---
--- @param filename string The filename of the compressed image file.
--- @return CompressedImageData compressedImageData The new CompressedImageData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newCompressedData(filename) return CompressedImageData end

--- Create a new CompressedImageData object from a compressed image file. LÖVE supports several compressed texture formats, enumerated in the CompressedImageFormat page.
---
--- @param fileData FileData A FileData containing a compressed image.
--- @return CompressedImageData compressedImageData The new CompressedImageData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newCompressedData(fileData) return CompressedImageData end

--- Creates a new ImageData object.
---
--- @param width number The width of the ImageData.
--- @param height number The height of the ImageData.
--- @return ImageData imageData The new blank ImageData object. Each pixel's color values, (including the alpha values!) will be set to zero.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newImageData(width, height) return ImageData end

--- Creates a new ImageData object.
---
--- @param width number The width of the ImageData.
--- @param height number The height of the ImageData.
--- @param format PixelFormat The pixel format of the ImageData.
--- @param data string Optional raw byte data to load into the ImageData, in the format specified by ''format''.
--- @return ImageData imageData The new ImageData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newImageData(width, height, format, data) return ImageData end

--- Creates a new ImageData object.
---
--- @param width number The width of the ImageData.
--- @param height number The height of the ImageData.
--- @param data string The data to load into the ImageData (RGBA bytes, left to right and top to bottom).
--- @return ImageData imageData The new ImageData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newImageData(width, height, data) return ImageData end

--- Creates a new ImageData object.
---
--- @param filename string The filename of the image file.
--- @return ImageData imageData The new ImageData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newImageData(filename) return ImageData end

--- Creates a new ImageData object.
---
--- @param filedata FileData The encoded file data to decode into image data.
--- @return ImageData imageData The new ImageData object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.image.newImageData(filedata) return ImageData end

--#endregion functions
