--- @meta

local love = {}
love.data = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- Compressed data formats.
--- @alias CompressedDataFormat
---| "lz4"			#		The LZ4 compression format. Compresses and decompresses very quickly, but the compression ratio is not the best. LZ4-HC is used when compression level 9 is specified. Some benchmarks are available here.
---| "zlib"			#		The zlib format is DEFLATE-compressed data with a small bit of header data. Compresses relatively slowly and decompresses moderately quickly, and has a decent compression ratio.
---| "gzip"			#		The gzip format is DEFLATE-compressed data with a slightly larger header than zlib. Since it uses DEFLATE it has the same compression characteristics as the zlib format.
---| "deflate"			#		Raw DEFLATE-compressed data (no header).


--- Return type of various data-returning functions.
--- @alias ContainerType
---| "data"			#		Return type is ByteData.
---| "string"			#		Return type is string.


--- Encoding format used to encode or decode data.
--- @alias EncodeFormat
---| "base64"			#		Encode/decode data as base64 binary-to-text encoding.
---| "hex"			#		Encode/decode data as hexadecimal string.


--- Hash algorithm of love.data.hash.
--- @alias HashFunction
---| "md5"			#		MD5 hash algorithm (16 bytes).
---| "sha1"			#		SHA1 hash algorithm (20 bytes).
---| "sha224"			#		SHA2 hash algorithm with message digest size of 224 bits (28 bytes).
---| "sha256"			#		SHA2 hash algorithm with message digest size of 256 bits (32 bytes).
---| "sha384"			#		SHA2 hash algorithm with message digest size of 384 bits (48 bytes).
---| "sha512"			#		SHA2 hash algorithm with message digest size of 512 bits (64 bytes).


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- Data object containing arbitrary bytes in an contiguous memory.
--- 
--- There are currently no LÖVE functions provided for manipulating the contents of a ByteData, but Data:getPointer can be used with LuaJIT's FFI to access and write to the contents directly.
--- @class ByteData: Object, Data
local ByteData = {}


--- Represents byte data compressed using a specific algorithm.
--- 
--- love.data.decompress can be used to de-compress the data (or love.math.decompress in 0.10.2 or earlier).
--- @class CompressedData: Data, Object
local CompressedData = {}

--- Gets the compression format of the CompressedData.
---
--- @return CompressedDataFormat format The format of the CompressedData.
function CompressedData:getFormat() return {} end

--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Compresses a string or data using a specific compression algorithm.
---
--- @param container ContainerType What type to return the compressed data as.
--- @param format CompressedDataFormat The format to use when compressing the string.
--- @param rawstring string The raw (un-compressed) string to compress.
--- @param level number The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.
--- @return CompressedData or string compressedData CompressedData/string which contains the compressed version of rawstring.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.compress(container, format, rawstring, level) return {} end

--- Compresses a string or data using a specific compression algorithm.
---
--- @param container ContainerType What type to return the compressed data as.
--- @param format CompressedDataFormat The format to use when compressing the data.
--- @param data Data A Data object containing the raw (un-compressed) data to compress.
--- @param level number The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.
--- @return CompressedData or string compressedData CompressedData/string which contains the compressed version of data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.compress(container, format, data, level) return {} end

--- Decode Data or a string from any of the EncodeFormats to Data or string.
---
--- @param container ContainerType What type to return the decoded data as.
--- @param format EncodeFormat The format of the input data.
--- @param sourceString string The raw (encoded) data to decode.
--- @return ByteData or string decoded ByteData/string which contains the decoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decode(container, format, sourceString) return {} end

--- Decode Data or a string from any of the EncodeFormats to Data or string.
---
--- @param container ContainerType What type to return the decoded data as.
--- @param format EncodeFormat The format of the input data.
--- @param sourceData Data The raw (encoded) data to decode.
--- @return ByteData or string decoded ByteData/string which contains the decoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decode(container, format, sourceData) return {} end

--- Decompresses a CompressedData or previously compressed string or Data object.
---
--- @param container ContainerType What type to return the decompressed data as.
--- @param compressedData CompressedData The compressed data to decompress.
--- @return Data or string decompressedData Data/string containing the raw decompressed data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, compressedData) return {} end

--- Decompresses a CompressedData or previously compressed string or Data object.
---
--- @param container ContainerType What type to return the decompressed data as.
--- @param format CompressedDataFormat The format that was used to compress the given string.
--- @param compressedString string A string containing data previously compressed with love.data.compress.
--- @return Data or string decompressedData Data/string containing the raw decompressed data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, format, compressedString) return {} end

--- Decompresses a CompressedData or previously compressed string or Data object.
---
--- @param container ContainerType What type to return the decompressed data as.
--- @param format CompressedDataFormat The format that was used to compress the given data.
--- @param data Data A Data object containing data previously compressed with love.data.compress.
--- @return Data or string decompressedData Data/string containing the raw decompressed data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, format, data) return {} end

--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format EncodeFormat The format of the output data.
--- @param sourceString string The raw data to encode.
--- @param linelength number The maximum line length of the output. Only supported for base64, ignored if 0.
--- @return ByteData or string encoded ByteData/string which contains the encoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.encode(container, format, sourceString, linelength) return {} end

--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format EncodeFormat The format of the output data.
--- @param sourceData Data The raw data to encode.
--- @param linelength number The maximum line length of the output. Only supported for base64, ignored if 0.
--- @return ByteData or string encoded ByteData/string which contains the encoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.encode(container, format, sourceData, linelength) return {} end

--- Gets the size in bytes that a given format used with love.data.pack will use.
--- 
--- This function behaves the same as Lua 5.3's string.packsize.
---
--- @param format string A string determining how the values are packed. Follows the rules of Lua 5.3's string.pack format strings.
--- @return number size The size in bytes that the packed data will use.
function love.data.getPackedSize(format) return 0 end

--- Compute the message digest of a string using a specified hash algorithm.
---
--- @param hashFunction HashFunction Hash algorithm to use.
--- @param string string String to hash.
--- @return string rawdigest Raw message digest string.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.hash(hashFunction, string) return "" end

--- Compute the message digest of a string using a specified hash algorithm.
---
--- @param hashFunction HashFunction Hash algorithm to use.
--- @param data Data Data to hash.
--- @return string rawdigest Raw message digest string.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.hash(hashFunction, data) return "" end

--- Creates a new Data object containing arbitrary bytes.
--- 
--- Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
--- @param datastring string The byte string to copy.
--- @return ByteData bytedata The new Data object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(datastring) return {} end

--- Creates a new Data object containing arbitrary bytes.
--- 
--- Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
--- @param Data Data The existing Data object to copy.
--- @param offset number The offset of the subsection to copy, in bytes.
--- @param size number The size in bytes of the new Data object.
--- @return ByteData bytedata The new Data object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(Data, offset, size) return {} end

--- Creates a new Data object containing arbitrary bytes.
--- 
--- Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
--- @param size number The size in bytes of the new Data object.
--- @return ByteData bytedata The new Data object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(size) return {} end

--- Creates a new Data referencing a subsection of an existing Data object.
---
--- @param data Data The Data object to reference.
--- @param offset number The offset of the subsection to reference, in bytes.
--- @param size number The size in bytes of the subsection to reference.
--- @return Data view The new Data view.
function love.data.newDataView(data, offset, size) return {} end

--- Packs (serializes) simple Lua values.
--- 
--- This function behaves the same as Lua 5.3's string.pack.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format string A string determining how the values are packed. Follows the rules of Lua 5.3's string.pack format strings.
--- @param v1 number or boolean or string The first value (number, boolean, or string) to serialize.
--- @param ... number or boolean or string Additional values to serialize.
--- @return Data or string data Data/string which contains the serialized data.
function love.data.pack(container, format, v1, ...) return {} end

--- Unpacks (deserializes) a byte-string or Data into simple Lua values.
--- 
--- This function behaves the same as Lua 5.3's string.unpack.
---
--- @param format string A string determining how the values were packed. Follows the rules of Lua 5.3's string.pack format strings.
--- @param datastring string A string containing the packed (serialized) data.
--- @param pos number Where to start reading in the string. Negative values can be used to read relative from the end of the string.
--- @return number or boolean or string v1 The first value (number, boolean, or string) that was unpacked.
--- @return number or boolean or string ... Additional unpacked values.
--- @return number index The index of the first unread byte in the data string.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.unpack(format, datastring, pos) return {}, {}, 0 end

--- Unpacks (deserializes) a byte-string or Data into simple Lua values.
--- 
--- This function behaves the same as Lua 5.3's string.unpack.
---
--- @param format string A string determining how the values were packed. Follows the rules of Lua 5.3's string.pack format strings.
--- @param data Data A Data object containing the packed (serialized) data.
--- @param pos number 1-based index indicating where to start reading in the Data. Negative values can be used to read relative from the end of the Data object.
--- @return number or boolean or string v1 The first value (number, boolean, or string) that was unpacked.
--- @return number or boolean or string ... Additional unpacked values.
--- @return number index The 1-based index of the first unread byte in the Data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.unpack(format, data, pos) return {}, {}, 0 end

--#endregion functions
