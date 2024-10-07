---Provides functionality for creating and transforming data.
---
--- [View online documents](https://love2d.org/wiki/love.data)
love.data = {}

-- ************************************************************ --
-- ************************************************************ --
-- Classes
-- ************************************************************ --
-- ************************************************************ --

--- @class ByteData: Object
---| Data object containing arbitrary bytes in an contiguous memory.

--- @class CompressedData: Object
---| Byte data compressed using a specific algorithm.

--- @class Data: Object
---| The superclass of all data.

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
---> Available since LÖVE 11.0
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
---> Available since LÖVE 11.0
--->
---> This enum is not supported in earlier versions.
---
--- Encoding format used to encode or decode data.

--- @alias EncodeFormat
---| "base64"				# Encode/decode data as base64 binary-to-text encoding.
---| "hex"					# Encode/decode data as hexadecimal string.

--- HashFunction ---
---
---> Available since LÖVE 11.0
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
