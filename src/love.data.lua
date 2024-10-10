--- @meta

local love = {}
love.data = {}

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
function love.data.compress(container, format, rawstring, level) return CompressedData or string end

--- Compresses a string or data using a specific compression algorithm.
---
--- @param container ContainerType What type to return the compressed data as.
--- @param format CompressedDataFormat The format to use when compressing the data.
--- @param data Data A Data object containing the raw (un-compressed) data to compress.
--- @param level number The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.
--- @return CompressedData or string compressedData CompressedData/string which contains the compressed version of data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.compress(container, format, data, level) return CompressedData or string end

--- Decode Data or a string from any of the EncodeFormats to Data or string.
---
--- @param container ContainerType What type to return the decoded data as.
--- @param format EncodeFormat The format of the input data.
--- @param sourceString string The raw (encoded) data to decode.
--- @return ByteData or string decoded ByteData/string which contains the decoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decode(container, format, sourceString) return ByteData or string end

--- Decode Data or a string from any of the EncodeFormats to Data or string.
---
--- @param container ContainerType What type to return the decoded data as.
--- @param format EncodeFormat The format of the input data.
--- @param sourceData Data The raw (encoded) data to decode.
--- @return ByteData or string decoded ByteData/string which contains the decoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decode(container, format, sourceData) return ByteData or string end

--- Decompresses a CompressedData or previously compressed string or Data object.
---
--- @param container ContainerType What type to return the decompressed data as.
--- @param compressedData CompressedData The compressed data to decompress.
--- @return Data or string decompressedData Data/string containing the raw decompressed data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, compressedData) return Data or string end

--- Decompresses a CompressedData or previously compressed string or Data object.
---
--- @param container ContainerType What type to return the decompressed data as.
--- @param format CompressedDataFormat The format that was used to compress the given string.
--- @param compressedString string A string containing data previously compressed with love.data.compress.
--- @return Data or string decompressedData Data/string containing the raw decompressed data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, format, compressedString) return Data or string end

--- Decompresses a CompressedData or previously compressed string or Data object.
---
--- @param container ContainerType What type to return the decompressed data as.
--- @param format CompressedDataFormat The format that was used to compress the given data.
--- @param data Data A Data object containing data previously compressed with love.data.compress.
--- @return Data or string decompressedData Data/string containing the raw decompressed data.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.decompress(container, format, data) return Data or string end

--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format EncodeFormat The format of the output data.
--- @param sourceString string The raw data to encode.
--- @param linelength number The maximum line length of the output. Only supported for base64, ignored if 0.
--- @return ByteData or string encoded ByteData/string which contains the encoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.encode(container, format, sourceString, linelength) return ByteData or string end

--- Encode Data or a string to a Data or string in one of the EncodeFormats.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format EncodeFormat The format of the output data.
--- @param sourceData Data The raw data to encode.
--- @param linelength number The maximum line length of the output. Only supported for base64, ignored if 0.
--- @return ByteData or string encoded ByteData/string which contains the encoded version of source.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.encode(container, format, sourceData, linelength) return ByteData or string end

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
function love.data.newByteData(datastring) return ByteData end

--- Creates a new Data object containing arbitrary bytes.
--- 
--- Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
--- @param Data Data The existing Data object to copy.
--- @param offset number The offset of the subsection to copy, in bytes.
--- @param size number The size in bytes of the new Data object.
--- @return ByteData bytedata The new Data object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(Data, offset, size) return ByteData end

--- Creates a new Data object containing arbitrary bytes.
--- 
--- Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
--- @param size number The size in bytes of the new Data object.
--- @return ByteData bytedata The new Data object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.data.newByteData(size) return ByteData end

--- Creates a new Data referencing a subsection of an existing Data object.
---
--- @param data Data The Data object to reference.
--- @param offset number The offset of the subsection to reference, in bytes.
--- @param size number The size in bytes of the subsection to reference.
--- @return Data view The new Data view.
function love.data.newDataView(data, offset, size) return Data end

--- Packs (serializes) simple Lua values.
--- 
--- This function behaves the same as Lua 5.3's string.pack.
---
--- @param container ContainerType What type to return the encoded data as.
--- @param format string A string determining how the values are packed. Follows the rules of Lua 5.3's string.pack format strings.
--- @param v1 number or boolean or string The first value (number, boolean, or string) to serialize.
--- @param ... number or boolean or string Additional values to serialize.
--- @return Data or string data Data/string which contains the serialized data.
function love.data.pack(container, format, v1, ...) return Data or string end

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
function love.data.unpack(format, datastring, pos) return number or boolean or string, number or boolean or string, 0 end

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
function love.data.unpack(format, data, pos) return number or boolean or string, number or boolean or string, 0 end

--#endregion functions
