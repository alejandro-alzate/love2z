--- @meta

local love = {}
love.filesystem = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- Buffer modes for File objects.
--- @alias BufferMode
---| "none"			#		No buffering. The result of write and append operations appears immediately.
---| "line"			#		Line buffering. Write and append operations are buffered until a newline is output or the buffer size limit is reached.
---| "full"			#		Full buffering. Write and append operations are always buffered until the buffer size limit is reached.


--- How to decode a given FileData.
--- @alias FileDecoder
---| "file"			#		The data is unencoded.
---| "base64"			#		The data is base64-encoded.


--- The different modes you can open a File in.
--- @alias FileMode
---| "r"			#		Open a file for read.
---| "w"			#		Open a file for write.
---| "a"			#		Open a file for append.
---| "c"			#		Do not open a file (represents a closed file.)


--- The type of a file.
--- @alias FileType
---| "file"			#		Regular file.
---| "directory"			#		Directory.
---| "symlink"			#		Symbolic link.
---| "other"			#		Something completely different like a device.


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- Represents a file dropped onto the window.
--- 
--- Note that the DroppedFile type can only be obtained from love.filedropped callback, and can't be constructed manually by the user.
--- @class DroppedFile: File, Object
local DroppedFile = {}


--- Represents a file on the filesystem. A function that takes a file path can also take a File.
--- @class File: Object
local File = {}

--- Closes a File.
---
--- @return boolean success Whether closing was successful.
function File:close() return true end
--- Flushes any buffered written data in the file to the disk.
---
--- @return boolean success Whether the file successfully flushed any buffered data to the disk.
--- @return string err The error string, if an error occurred and the file could not be flushed.
function File:flush() return true, "" end
--- Gets the buffer mode of a file.
---
--- @return BufferMode mode The current buffer mode of the file.
--- @return number size The maximum size in bytes of the file's buffer.
function File:getBuffer() return {}, 0 end
--- Gets the filename that the File object was created with. If the file object originated from the love.filedropped callback, the filename will be the full platform-dependent file path.
---
--- @return string filename The filename of the File.
function File:getFilename() return "" end
--- Gets the FileMode the file has been opened with.
---
--- @return FileMode mode The mode this file has been opened with.
function File:getMode() return {} end
--- Returns the file size.
---
--- @return number size The file size in bytes.
function File:getSize() return 0 end
--- Gets whether end-of-file has been reached.
---
--- @return boolean eof Whether EOF has been reached.
function File:isEOF() return true end
--- Gets whether the file is open.
---
--- @return boolean open True if the file is currently open, false otherwise.
function File:isOpen() return true end
--- Iterate over all the lines in a file.
---
--- @return function iterator The iterator (can be used in for loops).
function File:lines() return function() end end
--- Open the file for write, read or append.
---
--- @param mode FileMode The mode to open the file in.
--- @return boolean ok True on success, false otherwise.
--- @return string err The error string if an error occurred.
function File:open(mode) return true, "" end
--- Read a number of bytes from a file.
---
--- @param bytes number The number of bytes to read.
--- @return string contents The contents of the read bytes.
--- @return number size How many bytes have been read.
--- @diagnostic disable-next-line: duplicate-set-field
function File:read(bytes) return "", 0 end
--- Read a number of bytes from a file.
---
--- @param container ContainerType What type to return the file's contents as.
--- @param bytes number The number of bytes to read.
--- @return FileData or string contents FileData or string containing the read bytes.
--- @return number size How many bytes have been read.
--- @diagnostic disable-next-line: duplicate-set-field
function File:read(container, bytes) return {}, 0 end
--- Seek to a position in a file
---
--- @param pos number The position to seek to
--- @return boolean success Whether the operation was successful
function File:seek(pos) return true end
--- Sets the buffer mode for a file opened for writing or appending. Files with buffering enabled will not write data to the disk until the buffer size limit is reached, depending on the buffer mode.
--- 
--- File:flush will force any buffered data to be written to the disk.
---
--- @param mode BufferMode The buffer mode to use.
--- @param size number The maximum size in bytes of the file's buffer.
--- @return boolean success Whether the buffer mode was successfully set.
--- @return string errorstr The error string, if the buffer mode could not be set and an error occurred.
function File:setBuffer(mode, size) return true, "" end
--- Returns the position in the file.
---
--- @return number pos The current position.
function File:tell() return 0 end
--- Write data to a file.
---
--- @param data string The string data to write.
--- @param size number How many bytes to write.
--- @return boolean success Whether the operation was successful.
--- @return string err The error string if an error occurred.
--- @diagnostic disable-next-line: duplicate-set-field
function File:write(data, size) return true, "" end
--- Write data to a file.
---
--- @param data Data The Data object to write.
--- @param size number How many bytes to write.
--- @return boolean success Whether the operation was successful.
--- @return string errorstr The error string if an error occurred.
--- @diagnostic disable-next-line: duplicate-set-field
function File:write(data, size) return true, "" end

--- Data representing the contents of a file.
--- @class FileData: Data, Object
local FileData = {}

--- Gets the extension of the FileData.
---
--- @return string ext The extension of the file the FileData represents.
function FileData:getExtension() return "" end
--- Gets the filename of the FileData.
---
--- @return string name The name of the file the FileData represents.
function FileData:getFilename() return "" end

--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Append data to an existing file.
---
--- @param name string The name (and path) of the file.
--- @param data string The string data to append to the file.
--- @param size number How many bytes to write.
--- @return boolean success True if the operation was successful, or nil if there was an error.
--- @return string errormsg The error message on failure.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.append(name, data, size) return true, "" end

--- Append data to an existing file.
---
--- @param name string The name (and path) of the file.
--- @param data Data The Data object to append to the file.
--- @param size number How many bytes to write.
--- @return boolean success True if the operation was successful, or nil if there was an error.
--- @return string errormsg The error message on failure.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.append(name, data, size) return true, "" end

--- Gets whether love.filesystem follows symbolic links.
---
--- @return boolean enable Whether love.filesystem follows symbolic links.
function love.filesystem.areSymlinksEnabled() return true end

--- Recursively creates a directory.
--- 
--- When called with 'a/b' it creates both 'a' and 'a/b', if they don't exist already.
---
--- @param name string The directory to create.
--- @return boolean success True if the directory was created, false if not.
function love.filesystem.createDirectory(name) return true end

--- Returns the application data directory (could be the same as getUserDirectory)
---
--- @return string path The path of the application data directory
function love.filesystem.getAppdataDirectory() return "" end

--- Gets the filesystem paths that will be searched for c libraries when require is called.
--- 
--- The paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.) Additionally, any occurrence of a double question mark ('??') will be replaced by the name passed to require and the default library extension for the platform.
--- 
--- The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---
--- @return string paths The paths that the ''require'' function will check for c libraries in love's filesystem.
function love.filesystem.getCRequirePath() return "" end

--- Returns a table with the names of files and subdirectories in the specified path. The table is not sorted in any way; the order is undefined.
--- 
--- If the path passed to the function exists in the game and the save directory, it will list the files and directories from both places.
---
--- @param dir string The directory.
--- @return table files A sequence with the names of all files and subdirectories as strings.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getDirectoryItems(dir) return {} end

--- Returns a table with the names of files and subdirectories in the specified path. The table is not sorted in any way; the order is undefined.
--- 
--- If the path passed to the function exists in the game and the save directory, it will list the files and directories from both places.
---
--- @param dir string The directory.
--- @param callback function A function which is called for each file and folder in the directory. The filename is passed to the function as an argument.
--- @return table files A sequence with the names of all files and subdirectories as strings.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getDirectoryItems(dir, callback) return {} end

--- Gets the write directory name for your game. 
--- 
--- Note that this only returns the name of the folder to store your files in, not the full path.
---
--- @return string name The identity that is used as write directory.
function love.filesystem.getIdentity() return "" end

--- Gets information about the specified file or directory.
---
--- @param path string The file or directory path to check.
--- @param filtertype FileType If supplied, this parameter causes getInfo to only return the info table if the item at the given path matches the specified file type.
--- @return table info A table containing information about the specified path, or nil if nothing exists at the path. The table contains the following fields:
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getInfo(path, filtertype) return {} end

--- Gets information about the specified file or directory.
---
--- @param path string The file or directory path to check.
--- @param info table A table which will be filled in with info about the specified path.
--- @return table info The table given as an argument, or nil if nothing exists at the path. The table will be filled in with the following fields:
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getInfo(path, info) return {} end

--- Gets information about the specified file or directory.
---
--- @param path string The file or directory path to check.
--- @param filtertype FileType Causes getInfo to only return the info table if the item at the given path matches the specified file type.
--- @param info table A table which will be filled in with info about the specified path.
--- @return table info The table given as an argument, or nil if nothing exists at the path. The table will be filled in with the following fields:
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getInfo(path, filtertype, info) return {} end

--- Gets the platform-specific absolute path of the directory containing a filepath.
--- 
--- This can be used to determine whether a file is inside the save directory or the game's source .love.
---
--- @param filepath string The filepath to get the directory of.
--- @return string realdir The platform-specific full path of the directory containing the filepath.
function love.filesystem.getRealDirectory(filepath) return "" end

--- Gets the filesystem paths that will be searched when require is called.
--- 
--- The paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.)
--- 
--- The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---
--- @return string paths The paths that the ''require'' function will check in love's filesystem.
function love.filesystem.getRequirePath() return "" end

--- Gets the full path to the designated save directory.
--- 
--- This can be useful if you want to use the standard io library (or something else) to
--- 
--- read or write in the save directory.
---
--- @return string dir The absolute path to the save directory.
function love.filesystem.getSaveDirectory() return "" end

--- Returns the full path to the the .love file or directory. If the game is fused to the LÖVE executable, then the executable is returned.
---
--- @return string path The full platform-dependent path of the .love file or directory.
function love.filesystem.getSource() return "" end

--- Returns the full path to the directory containing the .love file. If the game is fused to the LÖVE executable, then the directory containing the executable is returned.
--- 
--- If love.filesystem.isFused is true, the path returned by this function can be passed to love.filesystem.mount, which will make the directory containing the main game (e.g. C:\Program Files\coolgame\) readable by love.filesystem.
---
--- @return string path The full platform-dependent path of the directory containing the .love file.
function love.filesystem.getSourceBaseDirectory() return "" end

--- Returns the path of the user's directory
---
--- @return string path The path of the user's directory
function love.filesystem.getUserDirectory() return "" end

--- Gets the current working directory.
---
--- @return string cwd The current working directory.
function love.filesystem.getWorkingDirectory() return "" end

--- Initializes love.filesystem, will be called internally, so should not be used explicitly.
---
--- @param appname string The name of the application binary, typically love.
--- @return nil
function love.filesystem.init(appname) return  end

--- Gets whether the game is in fused mode or not.
--- 
--- If a game is in fused mode, its save directory will be directly in the Appdata directory instead of Appdata/LOVE/. The game will also be able to load C Lua dynamic libraries which are located in the save directory.
--- 
--- A game is in fused mode if the source .love has been fused to the executable (see Game Distribution), or if '--fused' has been given as a command-line argument when starting the game.
---
--- @return boolean fused True if the game is in fused mode, false otherwise.
function love.filesystem.isFused() return true end

--- Iterate over the lines in a file.
---
--- @param name string The name (and path) of the file
--- @return function iterator A function that iterates over all the lines in the file
function love.filesystem.lines(name) return function() end end

--- Loads a Lua file (but does not run it).
---
--- @param name string The name (and path) of the file.
--- @return function chunk The loaded chunk.
--- @return string errormsg The error message if file could not be opened.
function love.filesystem.load(name) return function() end, "" end

--- Mounts a zip file or folder in the game's save directory for reading.
--- 
--- It is also possible to mount love.filesystem.getSourceBaseDirectory if the game is in fused mode.
---
--- @param archive string The folder or zip file in the game's save directory to mount.
--- @param mountpoint string The new path the archive will be mounted to.
--- @param appendToPath boolean Whether the archive will be searched when reading a filepath before or after already-mounted archives. This includes the game's source and save directories.
--- @return boolean success True if the archive was successfully mounted, false otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.mount(archive, mountpoint, appendToPath) return true end

--- Mounts a zip file or folder in the game's save directory for reading.
--- 
--- It is also possible to mount love.filesystem.getSourceBaseDirectory if the game is in fused mode.
---
--- @param filedata FileData The FileData object in memory to mount.
--- @param mountpoint string The new path the archive will be mounted to.
--- @param appendToPath boolean Whether the archive will be searched when reading a filepath before or after already-mounted archives. This includes the game's source and save directories.
--- @return boolean success True if the archive was successfully mounted, false otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.mount(filedata, mountpoint, appendToPath) return true end

--- Mounts a zip file or folder in the game's save directory for reading.
--- 
--- It is also possible to mount love.filesystem.getSourceBaseDirectory if the game is in fused mode.
---
--- @param data Data The Data object in memory to mount.
--- @param archivename string The name to associate the mounted data with, for use with love.filesystem.unmount. Must be unique compared to other mounted data.
--- @param mountpoint string The new path the archive will be mounted to.
--- @param appendToPath boolean Whether the archive will be searched when reading a filepath before or after already-mounted archives. This includes the game's source and save directories.
--- @return boolean success True if the archive was successfully mounted, false otherwise.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.mount(data, archivename, mountpoint, appendToPath) return true end

--- Creates a new File object. 
--- 
--- It needs to be opened before it can be accessed.
---
--- @param filename string The filename of the file.
--- @return File file The new File object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.newFile(filename) return {} end

--- Creates a new File object. 
--- 
--- It needs to be opened before it can be accessed.
---
--- @param filename string The filename of the file.
--- @param mode FileMode The mode to open the file in.
--- @return File file The new File object, or nil if an error occurred.
--- @return string errorstr The error string if an error occurred.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.newFile(filename, mode) return {}, "" end

--- Creates a new FileData object from a file on disk, or from a string in memory.
---
--- @param contents string The contents of the file in memory represented as a string.
--- @param name string The name of the file. The extension may be parsed and used by LÖVE when passing the FileData object into love.audio.newSource.
--- @return FileData data The new FileData.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.newFileData(contents, name) return {} end

--- Creates a new FileData object from a file on disk, or from a string in memory.
---
--- @param originaldata Data The Data object to copy into the new FileData object.
--- @param name string The name of the file. The extension may be parsed and used by LÖVE when passing the FileData object into love.audio.newSource.
--- @return FileData data The new FileData.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.newFileData(originaldata, name) return {} end

--- Creates a new FileData object from a file on disk, or from a string in memory.
---
--- @param filepath string Path to the file.
--- @return FileData data The new FileData, or nil if an error occurred.
--- @return string err The error string, if an error occurred.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.newFileData(filepath) return {}, "" end

--- Read the contents of a file.
---
--- @param name string The name (and path) of the file.
--- @param size number How many bytes to read.
--- @return string contents The file contents.
--- @return number size How many bytes have been read.
--- @return nil contents returns nil as content.
--- @return string error returns an error message.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.read(name, size) return "", 0, nil, "" end

--- Read the contents of a file.
---
--- @param container ContainerType What type to return the file's contents as.
--- @param name string The name (and path) of the file
--- @param size number How many bytes to read
--- @return FileData or string contents FileData or string containing the file contents.
--- @return number size How many bytes have been read.
--- @return nil contents returns nil as content.
--- @return string error returns an error message.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.read(container, name, size) return {}, 0, nil, "" end

--- Removes a file or empty directory.
---
--- @param name string The file or directory to remove.
--- @return boolean success True if the file/directory was removed, false otherwise.
function love.filesystem.remove(name) return true end

--- Sets the filesystem paths that will be searched for c libraries when require is called.
--- 
--- The paths string returned by this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.) Additionally, any occurrence of a double question mark ('??') will be replaced by the name passed to require and the default library extension for the platform.
--- 
--- The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---
--- @param paths string The paths that the ''require'' function will check in love's filesystem.
--- @return nil
function love.filesystem.setCRequirePath(paths) return  end

--- Sets the write directory for your game. 
--- 
--- Note that you can only set the name of the folder to store your files in, not the location.
---
--- @param name string The new identity that will be used as write directory.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.setIdentity(name) return  end

--- Sets the write directory for your game. 
--- 
--- Note that you can only set the name of the folder to store your files in, not the location.
---
--- @param name string The new identity that will be used as write directory.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.setIdentity(name) return  end

--- Sets the filesystem paths that will be searched when require is called.
--- 
--- The paths string given to this function is a sequence of path templates separated by semicolons. The argument passed to ''require'' will be inserted in place of any question mark ('?') character in each template (after the dot characters in the argument passed to ''require'' are replaced by directory separators.)
--- 
--- The paths are relative to the game's source and save directories, as well as any paths mounted with love.filesystem.mount.
---
--- @param paths string The paths that the ''require'' function will check in love's filesystem.
--- @return nil
function love.filesystem.setRequirePath(paths) return  end

--- Sets the source of the game, where the code is present. This function can only be called once, and is normally automatically done by LÖVE.
---
--- @param path string Absolute path to the game's source folder.
--- @return nil
function love.filesystem.setSource(path) return  end

--- Sets whether love.filesystem follows symbolic links. It is enabled by default in version 0.10.0 and newer, and disabled by default in 0.9.2.
---
--- @param enable boolean Whether love.filesystem should follow symbolic links.
--- @return nil
function love.filesystem.setSymlinksEnabled(enable) return  end

--- Unmounts a zip file or folder previously mounted for reading with love.filesystem.mount.
---
--- @param archive string The folder or zip file in the game's save directory which is currently mounted.
--- @return boolean success True if the archive was successfully unmounted, false otherwise.
function love.filesystem.unmount(archive) return true end

--- Write data to a file in the save directory. If the file existed already, it will be completely replaced by the new contents.
---
--- @param name string The name (and path) of the file.
--- @param data string The string data to write to the file.
--- @param size number How many bytes to write.
--- @return boolean success If the operation was successful.
--- @return string message Error message if operation was unsuccessful.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.write(name, data, size) return true, "" end

--- Write data to a file in the save directory. If the file existed already, it will be completely replaced by the new contents.
---
--- @param name string The name (and path) of the file.
--- @param data Data The Data object to write to the file.
--- @param size number How many bytes to write.
--- @return boolean success If the operation was successful.
--- @return string message Error message if operation was unsuccessful.
--- @diagnostic disable-next-line: duplicate-set-field
function love.filesystem.write(name, data, size) return true, "" end

--#endregion functions
