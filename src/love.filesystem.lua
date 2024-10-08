--- Provides functionality for accessing files and folders.
---
--- [View online documents](https://love2d.org/wiki/love.filesystem)
love.filesystem = {}

-- ************************************************************ --
-- ************************************************************ --
-- Classes
-- ************************************************************ --
-- ************************************************************ --

--- @class File: Object
---| Represents a file that has been opened.

--- @class DirectoryIterator: Object
---| An object that iterates through a directory.

-- ************************************************************ --
-- ************************************************************ --
-- Enums
-- ************************************************************ --
-- ************************************************************ --

--- @alias FileMode
---| "r"					# Opens a file for reading.
---| "w"					# Opens a file for writing. Overwrites existing files.
---| "a"					# Opens a file for appending. Creates a new file if it doesn't exist.
---| "rb"					# Opens a file for reading in binary mode.
---| "wb"					# Opens a file for writing in binary mode. Overwrites existing files.
---| "ab"					# Opens a file for appending in binary mode. Creates a new file if it doesn't exist.


-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Appends data to a file.
---
--- Equivalent to calling `file:write(data)` after calling `file:seek("end")`.
---
--- @param file File The file to append to.
--- @param data string The data to append to the file.
--- @return nil
function love.filesystem.append(file, data) end

--- Creates a new directory.
---
--- @param path string The path to the new directory.
--- @return boolean success True if the directory was created successfully.
--- @return string message An error message if the directory could not be created.
--- @nodiscard
function love.filesystem.createDirectory(path) return true, "" end

--- Creates a new file.
---
--- @param path string The path to the new file.
--- @return boolean success True if the file was created successfully.
--- @return string message An error message if the file could not be created.
--- @nodiscard
function love.filesystem.createFile(path) return true, "" end

--- Gets a list of the files and folders in a directory.
---
--- @param path string The path to the directory to list.
--- @return table files A table containing the names of the files and folders in the directory.
--- @nodiscard
function love.filesystem.getDirectoryItems(path) return {} end

--- Returns the current working directory.
--- @return string path The current working directory.
--- @nodiscard
function love.filesystem.getWorkingDirectory() return "" end

--- Returns the size of a file in bytes.
--- @param path string The path to the file.
--- @return number size The size of the file in bytes.
--- @nodiscard
function love.filesystem.getSize(path) return 0 end

--- Gets the last modified time of a file or directory.
---
--- The returned value is the number of seconds since the Unix epoch (January 1, 1970, 00:00:00 GMT).
---
--- @param path string The path to the file.
--- @return number timestamp The timestamp of the file.
--- @nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getLastModified(path) return 0 end

--- Gets the last modified time of a file or directory.
---
--- The returned value is the number of seconds since the Unix epoch (January 1, 1970, 00:00:00 GMT).
---
--- @param path string The path to the file.
--- @param time TimeUnit The unit of time.
--- @return number timestamp The timestamp of the file.
--- @nodiscard
---@diagnostic disable-next-line: duplicate-set-field
function love.filesystem.getLastModified(path, time) return 0 end

--- Gets the type of a file or directory.
---
--- @param path string The path to the file.
--- @return string type The type of the file or directory: "file" or "directory".
--- @nodiscard
function love.filesystem.getType(path) return "" end

--- Checks whether a file or directory exists.
--- @param path string The path to the file or directory.
--- @return boolean exists True if the file or directory exists, false otherwise.
--- @nodiscard
function love.filesystem.exists(path) return false end

--- Checks whether a file is a directory.
--- @param path string The path to the file.
--- @return boolean isDirectory True if the file is a directory, false otherwise.
--- @nodiscard
function love.filesystem.isDirectory(path) return false end

--- Checks whether a file is a regular file.
--- @param path string The path to the file.
--- @return boolean isFile True if the file is a regular file, false otherwise.
--- @nodiscard
function love.filesystem.isFile(path) return false end

--- Opens a file for reading or writing.
---
--- @param path string The path to the file.
--- @param mode FileMode The mode to open the file in.
--- @return File file The opened file.
--- @return string message An error message if the file could not be opened.
--- @nodiscard
function love.filesystem.newFile(path, mode) return {}, "" end

--- Opens a directory for reading.
---
--- @param path string The path to the directory to read.
--- @return DirectoryIterator iterator The opened directory.
--- @return string message An error message if the directory could not be opened.
--- @nodiscard
function love.filesystem.newDirectoryIterator(path) return {}, "" end

--- Reads data from a file.
---
--- @param file File The file to read from.
--- @return string data The data read from the file.
--- @nodiscard
function love.filesystem.read(file) return "" end

--- Reads a single line from a file.
---
--- @param file File The file to read from.
--- @return string line The line read from the file.
--- @nodiscard
function love.filesystem.readLine(file) return "" end

--- Writes data to a file.
---
--- @param file File The file to write to.
--- @param data string The data to write to the file.
--- @return nil
function love.filesystem.write(file, data) end

--- Removes a file or directory.
---
--- @param path string The path to the file or directory to remove.
--- @return boolean success True if the file or directory was removed successfully.
--- @return string message An error message if the file or directory could not be removed.
--- @nodiscard
function love.filesystem.remove(path) return true, "" end

--- Changes the current working directory.
--- @param path string The new working directory.
--- @return boolean success True if the working directory was changed successfully.
--- @return string message An error message if the working directory could not be changed.
--- @nodiscard
function love.filesystem.setWorkingDirectory(path) return true, "" end
