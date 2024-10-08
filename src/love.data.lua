---Provides functionality for creating and transforming data.
---
--- [View online documents](https://love2d.org/wiki/love.data)
love.data = {}

-- ************************************************************ --
-- ************************************************************ --
-- Classes
-- ************************************************************ --
-- ************************************************************ --

--- @class Data: Object
---| The superclass of all data.

--- @class ByteData: Object, Data
---| Data object containing arbitrary bytes in an contiguous memory.

--- @class CompressedData: Object, Data
---| Byte data compressed using a specific algorithm.

-- ************************************************************ --
-- ************************************************************ --
-- Enums
-- ************************************************************ --
-- ************************************************************ --

--- CompressedDataFormat ---
---
---> Available since LÖVE 0.10.0
--->
---> This enum is not supported in earlier versions.
---
--- Compressed data formats.

--- @alias CompressedDataFormat ---
---| "lz4"					# The LZ4 compression format. Compresses and decompresses very quickly, but the compression ratio is not the best. LZ4-HC is used when compression level 9 is specified. Some benchmarks are available here.
---| "zlib"					# The zlib format is DEFLATE-compressed data with a small bit of header data. Compresses relatively slowly and decompresses moderately quickly, and has a decent compression ratio.
---| "gzip"					# The gzip format is DEFLATE-compressed data with a slightly larger header than zlib. Since it uses DEFLATE it has the same compression characteristics as the zlib format.
---| "deflate" 				# Available since LÖVE 11.0: Raw DEFLATE-compressed data (no header).

--- ContainerType ---
---
---> ***Available since LÖVE 11.0***
--->
---> This enum is not supported in earlier versions.
---
--- Return type of various data-returning functions.
---
--- ### Notes:
---
---Use data return type if you want to pass a reference to the data to another thread or LÖVE function, and use string return type if you want to use it immediately, like sending it to network.

--- @alias ContainerType
---| "data"					# Return type is ByteData.
---| "string"				# Return type is string.

--- EncodeFormat ---
---
---> ***Available since LÖVE 11.0***
--->
---> This enum is not supported in earlier versions.
---
--- Encoding format used to encode or decode data.

--- @alias EncodeFormat
---| "base64"				# Encode/decode data as base64 binary-to-text encoding.
---| "hex"					# Encode/decode data as hexadecimal string.

--- HashFunction ---
---
---> ***Available since LÖVE 11.0***
--->
---> This enum is not supported in earlier versions.
---
--- Hash algorithm of love.data.hash.

--- @alias HashFunction
---| "md5"					# MD5 hash algorithm (16 bytes).
---| "sha1"					# SHA1 hash algorithm (20 bytes).
---| "sha224"				# SHA2 hash algorithm with message digest size of 224 bits (28 bytes).
---| "sha256"				# SHA2 hash algorithm with message digest size of 256 bits (32 bytes).
---| "sha384"				# SHA2 hash algorithm with message digest size of 384 bits (48 bytes).
---| "sha512"				# SHA2 hash algorithm with message digest size of 512 bits (64 bytes).


-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

---> ***Available since LÖVE 11.0***
--->
---> Deprecates `love.math.compress`.
---
--- Compresses a string or data using a specific compression algorithm.
---
---> This function, depending on the compression format and level, can be slow if called repeatedly, such as from love.update or love.draw. Some benchmarks are available [here](https://github.com/Cyan4973/lz4#user-content-benchmarks).
---
---@param container ContainerType What type to return the compressed data as.
---@param format CompressedDataFormat The format to use when compressing the string.
---@param rawstring string The raw (un-compressed) string to compress.
---@param level number (-1) The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.
---@return CompressedData|string value CompressedData/string which contains the compressed version of rawstring.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.compress(container, format, rawstring, level) return "" end

---@param container ContainerType What type to return the compressed data as.
---@param format CompressedDataFormat The format to use when compressing the string.
---@param data Data A Data object containing the raw (un-compressed) data to compress.
---@param level number (-1) The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.
---@return CompressedData|string value CompressedData/string which contains the compressed version of rawstring.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.compress(container, format, data, level) return "" end

---> ***Available since LÖVE 11.0***
--->
---> Deprecates `love.math.compress`.
---
---Decode Data or a string from any of the EncodeFormats to Data or string.
---@param container ContainerType What type to return the decoded data as.
---@param format EncodeFormat The format of the input data.
---@param sourceString string The raw (encoded) data to decode.
---@return ByteData|string decoded ByteData/string which contains the decoded version of source.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.decode(container, format, sourceString) return "" end

---> ***Available since LÖVE 11.0***
--->
---> Deprecates `love.math.compress`.
---
---Decode Data or a string from any of the EncodeFormats to Data or string.
---@param container ContainerType What type to return the decoded data as.
---@param format EncodeFormat The format of the input data.
---@param sourceData Data The raw (encoded) data to decode.
---@return ByteData|string decoded ByteData/string which contains the decoded version of source.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.decode(container, format, sourceData) return "" end

---> ***Available since LÖVE 11.0***
--->
---> Deprecates `love.math.decompress`.
---
---Decompresses a CompressedData or previously compressed string or Data object.
---@param container ContainerType What type to return the decompressed data as.
---@param compressedData CompressedData The compressed data to decompress.
---@return Data|string decompressedData Data/string containing the raw decompressed data.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, compressedData) return "" end

---> ***Available since LÖVE 11.0***
--->
---> Deprecates `love.math.decompress`.
---
---Decompresses a CompressedData or previously compressed string or Data object.
---@param container ContainerType What type to return the decompressed data as.
---@param compressedString string A string containing data previously compressed with love.data.compress.
---@return Data|string decompressedData Data/string containing the raw decompressed data.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, format, compressedString) return "" end

---> ***Available since LÖVE 11.0***
--->
---> Deprecates `love.math.decompress`.
---
---Decompresses a CompressedData or previously compressed string or Data object.
---@param container ContainerType What type to return the decompressed data as.
---@param data Data A Data object containing data previously compressed with love.data.compress.
---@return Data|string decompressedData Data/string containing the raw decompressed data.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, format, data) return "" end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format EncodeFormat The format of the output data.
--- @param sourceString string The raw data to encode.
--- @param linelength number The maximum line length of the output. Only supported for base64, ignored if 0.
--- @return ByteData|string encoded ByteData/string which contains the encoded version of source.
--- @nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.encode(container, format, sourceString, linelength) return "" end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format EncodeFormat The format of the output data.
--- @param sourceData Data The raw data to encode.
--- @param linelength number The maximum line length of the output. Only supported for base64, ignored if 0.
--- @return ByteData|string encoded ByteData/string which contains the encoded version of source.
--- @nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.encode(container, format, sourceData, linelength) return "" end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Gets the size in bytes that a given format used with love.data.pack will use.
---
--- This function behaves the same as Lua 5.3's [string.packsize](https://www.lua.org/manual/5.3/manual.html#pdf-string.packsize).
---
--- ### Notes:
---
--- The format string cannot have the variable-length options 's' or 'z'.
--- @param format string  A string determining how the values are packed. Follows the rules of [Lua 5.3's string.pack format strings](https://www.lua.org/manual/5.3/manual.html#6.4.2).
--- @return number size The size in bytes that the packed data will use.
--- @nodiscard
function love.data.getPackedSize(format) return 0 end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
---Compute message digest using specific hash algorithm.
---@param hashFunction HashFunction Hash algorithm to use.
---@param string string String to hash.
---@return string rawdigest Raw message digest string.
---@diagnostic disable-next-line: duplicate-set-field
function love.data.hash(hashFunction, string) return "" end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
---Compute message digest using specific hash algorithm.
---
---### Notes:

---LOVE before 11.3 had a bug that gives wrong result for specific input length.
---
---To return the hex string representation of the hash, use `love.data.encode`
---
---```lua
---hexDigestString = love.data.encode("string", "hex", love.data.hash(algo, data))
---```
---@param hashFunction HashFunction Hash algorithm to use.
---@param data Data String to hash.
---@return string rawdigest Raw message digest string.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.hash(hashFunction, data) return "" end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Creates a new Data object containing arbitrary bytes.
--- `Data:getPointer` along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
---
--- Creates a new ByteData by copying from an existing Data object.
--- @param datastring string The byte string to copy.
--- @return ByteData bytedata The new Data object.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(datastring) return {} end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Creates a new ByteData by copying from an existing Data object.
---comment
---@param data Data The existing Data object to copy.
---@param offset number The offset of the subsection to copy, in bytes.
---@param size number The size in bytes of the new Data object.
---@return ByteData bytedata The new Data object.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(data, offset, size) return {} end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
--- Creates a new empty (zero-initialized) ByteData with the specific size.
---@param size number The size in bytes of the new Data object.
---@return ByteData bytedata The new Data object.
---@nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(size) return {} end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
---Creates a new Data referencing a subsection of an existing Data object.
---
---> This function can be slow if it is called repeatedly, such as from love.update or love.draw. If you need to use a specific resource often, create it once and store it somewhere it can be reused!
---
--- ### Notes:
---
---`Data:getString`, `Data:getPointer` and `Data:getFFIPointer` will return the original Data object's contents, with the view's offset and size applied where applicable.
---@param data Data The Data object to reference.
---@param offset number The offset of the subsection to reference, in bytes.
---@param size number The size in bytes of the subsection to reference.
---@return Data view The new Data view.
function love.data.newDataView(data, offset, size) return {} end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
---Packs (serializes) simple Lua values.
---
---This function behaves the same as Lua 5.3's [string.pack](https://www.lua.org/manual/5.3/manual.html#pdf-string.pack)
---comment
---@param container ContainerType What type to return the encoded data as.
---@param format string A string determining how the values are packed. Follows the rules of [Lua 5.3's string.pack format strings](https://www.lua.org/manual/5.3/manual.html#6.4.2).
---@param v1 number|boolean|string The first value (number, boolean, or string) to serialize.
---@param ...? number|boolean|string Additional values to serialize.
---@return Data|string data Data/string which contains the serialized data.
function love.data.pack(container, format, v1, ...) return "" end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
---Unpacks (deserializes) a byte-string or Data into simple Lua values.
---
---This function behaves the same as Lua 5.3's [string.unpack](https://www.lua.org/manual/5.3/manual.html#pdf-string.unpack).
---
---@param format string A string determining how the values were packed. Follows the rules of [Lua 5.3's string.pack format strings](https://www.lua.org/manual/5.3/manual.html#6.4.2).
---@param datastring string A string containing the packed (serialized) data.
---@param pos number Where to start reading in the string. Negative values can be used to read relative from the end of the string.
---@return number|boolean|string v1? The first value (number, boolean, or string) that was unpacked.
---@return number|boolean|string ...? Additional unpacked values.
---@return number index The index of the first unread byte in the data string.
---@diagnostic disable-next-line: duplicate-set-field
function love.data.unpack(format, datastring, pos) return 0, table.unpack({}), 0 end

---> ***Available since LÖVE 11.0***
--->
---> This function is not supported in earlier versions.
---
---Unpacks (deserializes) a byte-string or Data into simple Lua values.
---
---This function behaves the same as Lua 5.3's [string.unpack](https://www.lua.org/manual/5.3/manual.html#pdf-string.unpack).
---
---### Notes:
---
---Unpacking integers with values greater than 2^52 is not supported, as Lua 5.1 cannot represent those values in its number type.
---@param format string A string determining how the values were packed. Follows the rules of [Lua 5.3's string.pack format strings](https://www.lua.org/manual/5.3/manual.html#6.4.2).
---@param data Data A Data object containing the packed (serialized) data.
---@param pos number Where to start reading in the string. Negative values can be used to read relative from the end of the string.
---@return number|boolean|string v1? The first value (number, boolean, or string) that was unpacked.
---@return number|boolean|string ...? Additional unpacked values.
---@return number index The index of the first unread byte in the data string.
---@diagnostic disable-next-line: duplicate-set-field
function love.data.unpack(format, data, pos) return 0, table.unpack({}), 0 end
