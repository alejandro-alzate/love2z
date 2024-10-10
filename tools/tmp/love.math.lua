--- @meta

local love = {}
love.math = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- The layout of matrix elements (row-major or column-major).
--- @alias MatrixLayout
---| "row"		#		The matrix is row-major:
---| "column"		#		The matrix is column-major:


--#endregion enums
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Converts a color from 0..255 to 0..1 range.
---
--- @param rb number Red color component in 0..255 range.
--- @param gb number Green color component in 0..255 range.
--- @param bb number Blue color component in 0..255 range.
--- @param ab number Alpha color component in 0..255 range.
--- @return number r Red color component in 0..1 range.
--- @return number g Green color component in 0..1 range.
--- @return number b Blue color component in 0..1 range.
--- @return number a Alpha color component in 0..1 range or nil if alpha is not specified.
function love.math.colorFromBytes(rb, gb, bb, ab) return 0, 0, 0, 0 end

--- Converts a color from 0..1 to 0..255 range.
---
--- @param r number Red color component.
--- @param g number Green color component.
--- @param b number Blue color component.
--- @param a number Alpha color component.
--- @return number rb Red color component in 0..255 range.
--- @return number gb Green color component in 0..255 range.
--- @return number bb Blue color component in 0..255 range.
--- @return number ab Alpha color component in 0..255 range or nil if alpha is not specified.
function love.math.colorToBytes(r, g, b, a) return 0, 0, 0, 0 end

--- Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically.
--- 
--- Read more about gamma-correct rendering here, here, and here.
--- 
--- In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---
--- @param r number The red channel of the sRGB color to convert.
--- @param g number The green channel of the sRGB color to convert.
--- @param b number The blue channel of the sRGB color to convert.
--- @return number lr The red channel of the converted color in linear RGB space.
--- @return number lg The green channel of the converted color in linear RGB space.
--- @return number lb The blue channel of the converted color in linear RGB space.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.gammaToLinear(r, g, b) return 0, 0, 0 end

--- Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically.
--- 
--- Read more about gamma-correct rendering here, here, and here.
--- 
--- In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---
--- @param color table An array with the red, green, and blue channels of the sRGB color to convert.
--- @return number lr The red channel of the converted color in linear RGB space.
--- @return number lg The green channel of the converted color in linear RGB space.
--- @return number lb The blue channel of the converted color in linear RGB space.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.gammaToLinear(color) return 0, 0, 0 end

--- Converts a color from gamma-space (sRGB) to linear-space (RGB). This is useful when doing gamma-correct rendering and you need to do math in linear RGB in the few cases where LÖVE doesn't handle conversions automatically.
--- 
--- Read more about gamma-correct rendering here, here, and here.
--- 
--- In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---
--- @param c number The value of a color channel in sRGB space to convert.
--- @return number lc The value of the color channel in linear RGB space.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.gammaToLinear(c) return 0 end

--- Gets the seed of the random number generator.
--- 
--- The seed is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer  values above 2^53, but the seed can be an integer value up to 2^64.
---
--- @return number low Integer number representing the lower 32 bits of the random number generator's 64 bit seed value.
--- @return number high Integer number representing the higher 32 bits of the random number generator's 64 bit seed value.
function love.math.getRandomSeed() return 0, 0 end

--- Gets the current state of the random number generator. This returns an opaque implementation-dependent string which is only useful for later use with love.math.setRandomState or RandomGenerator:setState.
--- 
--- This is different from love.math.getRandomSeed in that getRandomState gets the random number generator's current state, whereas getRandomSeed gets the previously set seed number.
---
--- @return string state The current state of the random number generator, represented as a string.
function love.math.getRandomState() return "" end

--- Checks whether a polygon is convex.
--- 
--- PolygonShapes in love.physics, some forms of Meshes, and polygons drawn with love.graphics.polygon must be simple convex polygons.
---
--- @param vertices table The vertices of the polygon as a table in the form of {x1, y1, x2, y2, x3, y3, ...}.
--- @return boolean convex Whether the given polygon is convex.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.isConvex(vertices) return true end

--- Checks whether a polygon is convex.
--- 
--- PolygonShapes in love.physics, some forms of Meshes, and polygons drawn with love.graphics.polygon must be simple convex polygons.
---
--- @param x1 number The position of the first vertex of the polygon on the x-axis.
--- @param y1 number The position of the first vertex of the polygon on the y-axis.
--- @param x2 number The position of the second vertex of the polygon on the x-axis.
--- @param y2 number The position of the second vertex of the polygon on the y-axis.
--- @param ... number Additional position of the vertex of the polygon on the x-axis and y-axis.
--- @return boolean convex Whether the given polygon is convex.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.isConvex(x1, y1, x2, y2, ...) return true end

--- Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.
--- 
--- In general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space.
--- 
--- Read more about gamma-correct rendering here, here, and here.
--- 
--- In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---
--- @param lr number The red channel of the linear RGB color to convert.
--- @param lg number The green channel of the linear RGB color to convert.
--- @param lb number The blue channel of the linear RGB color to convert.
--- @return number cr The red channel of the converted color in gamma sRGB space.
--- @return number cg The green channel of the converted color in gamma sRGB space.
--- @return number cb The blue channel of the converted color in gamma sRGB space.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.linearToGamma(lr, lg, lb) return 0, 0, 0 end

--- Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.
--- 
--- In general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space.
--- 
--- Read more about gamma-correct rendering here, here, and here.
--- 
--- In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---
--- @param color table An array with the red, green, and blue channels of the linear RGB color to convert.
--- @return number cr The red channel of the converted color in gamma sRGB space.
--- @return number cg The green channel of the converted color in gamma sRGB space.
--- @return number cb The blue channel of the converted color in gamma sRGB space.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.linearToGamma(color) return 0, 0, 0 end

--- Converts a color from linear-space (RGB) to gamma-space (sRGB). This is useful when storing linear RGB color values in an image, because the linear RGB color space has less precision than sRGB for dark colors, which can result in noticeable color banding when drawing.
--- 
--- In general, colors chosen based on what they look like on-screen are already in gamma-space and should not be double-converted. Colors calculated using math are often in the linear RGB space.
--- 
--- Read more about gamma-correct rendering here, here, and here.
--- 
--- In versions prior to 11.0, color component values were within the range of 0 to 255 instead of 0 to 1.
---
--- @param lc number The value of a color channel in linear RGB space to convert.
--- @return number c The value of the color channel in gamma sRGB space.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.linearToGamma(lc) return 0 end

--- Creates a new BezierCurve object.
--- 
--- The number of vertices in the control polygon determines the degree of the curve, e.g. three vertices define a quadratic (degree 2) Bézier curve, four vertices define a cubic (degree 3) Bézier curve, etc.
---
--- @param vertices table The vertices of the control polygon as a table in the form of {x1, y1, x2, y2, x3, y3, ...}.
--- @return BezierCurve curve A Bézier curve object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newBezierCurve(vertices) return {} end

--- Creates a new BezierCurve object.
--- 
--- The number of vertices in the control polygon determines the degree of the curve, e.g. three vertices define a quadratic (degree 2) Bézier curve, four vertices define a cubic (degree 3) Bézier curve, etc.
---
--- @param x1 number The position of the first vertex of the control polygon on the x-axis.
--- @param y1 number The position of the first vertex of the control polygon on the y-axis.
--- @param x2 number The position of the second vertex of the control polygon on the x-axis.
--- @param y2 number The position of the second vertex of the control polygon on the y-axis.
--- @param ... number Additional position of the vertex of the control polygon on the x-axis and y-axis.
--- @return BezierCurve curve A Bézier curve object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newBezierCurve(x1, y1, x2, y2, ...) return {} end

--- Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions.
---
--- @return RandomGenerator rng The new Random Number Generator object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newRandomGenerator() return {} end

--- Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions.
---
--- @param seed number The initial seed number to use for this object.
--- @return RandomGenerator rng The new Random Number Generator object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newRandomGenerator(seed) return {} end

--- Creates a new RandomGenerator object which is completely independent of other RandomGenerator objects and random functions.
---
--- @param low number The lower 32 bits of the seed number to use for this object.
--- @param high number The higher 32 bits of the seed number to use for this object.
--- @return RandomGenerator rng The new Random Number Generator object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newRandomGenerator(low, high) return {} end

--- Creates a new Transform object.
---
--- @return Transform transform The new Transform object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newTransform() return {} end

--- Creates a new Transform object.
---
--- @param x number The position of the new Transform on the x-axis.
--- @param y number The position of the new Transform on the y-axis.
--- @param angle number The orientation of the new Transform in radians.
--- @param sx number Scale factor on the x-axis.
--- @param sy number Scale factor on the y-axis.
--- @param ox number Origin offset on the x-axis.
--- @param oy number Origin offset on the y-axis.
--- @param kx number Shearing / skew factor on the x-axis.
--- @param ky number Shearing / skew factor on the y-axis.
--- @return Transform transform The new Transform object.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.newTransform(x, y, angle, sx, sy, ox, oy, kx, ky) return {} end

--- Generates a Simplex or Perlin noise value in 1-4 dimensions. The return value will always be the same, given the same arguments.
--- 
--- Simplex noise is closely related to Perlin noise. It is widely used for procedural content generation.
--- 
--- There are many webpages which discuss Perlin and Simplex noise in detail.
---
--- @param x number The number used to generate the noise value.
--- @return number value The noise value in the range of 1.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.noise(x) return 0 end

--- Generates a Simplex or Perlin noise value in 1-4 dimensions. The return value will always be the same, given the same arguments.
--- 
--- Simplex noise is closely related to Perlin noise. It is widely used for procedural content generation.
--- 
--- There are many webpages which discuss Perlin and Simplex noise in detail.
---
--- @param x number The first value of the 2-dimensional vector used to generate the noise value.
--- @param y number The second value of the 2-dimensional vector used to generate the noise value.
--- @return number value The noise value in the range of 1.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.noise(x, y) return 0 end

--- Generates a Simplex or Perlin noise value in 1-4 dimensions. The return value will always be the same, given the same arguments.
--- 
--- Simplex noise is closely related to Perlin noise. It is widely used for procedural content generation.
--- 
--- There are many webpages which discuss Perlin and Simplex noise in detail.
---
--- @param x number The first value of the 3-dimensional vector used to generate the noise value.
--- @param y number The second value of the 3-dimensional vector used to generate the noise value.
--- @param z number The third value of the 3-dimensional vector used to generate the noise value.
--- @return number value The noise value in the range of 1.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.noise(x, y, z) return 0 end

--- Generates a Simplex or Perlin noise value in 1-4 dimensions. The return value will always be the same, given the same arguments.
--- 
--- Simplex noise is closely related to Perlin noise. It is widely used for procedural content generation.
--- 
--- There are many webpages which discuss Perlin and Simplex noise in detail.
---
--- @param x number The first value of the 4-dimensional vector used to generate the noise value.
--- @param y number The second value of the 4-dimensional vector used to generate the noise value.
--- @param z number The third value of the 4-dimensional vector used to generate the noise value.
--- @param w number The fourth value of the 4-dimensional vector used to generate the noise value.
--- @return number value The noise value in the range of 1.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.noise(x, y, z, w) return 0 end

--- Generates a pseudo-random number in a platform independent manner. The default love.run seeds this function at startup, so you generally don't need to seed it yourself.
---
--- @return number number The pseudo-random number.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.random() return 0 end

--- Generates a pseudo-random number in a platform independent manner. The default love.run seeds this function at startup, so you generally don't need to seed it yourself.
---
--- @param max number The maximum possible value it should return.
--- @return number number The pseudo-random integer number.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.random(max) return 0 end

--- Generates a pseudo-random number in a platform independent manner. The default love.run seeds this function at startup, so you generally don't need to seed it yourself.
---
--- @param min number The minimum possible value it should return.
--- @param max number The maximum possible value it should return.
--- @return number number The pseudo-random integer number.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.random(min, max) return 0 end

--- Get a normally distributed pseudo random number.
---
--- @param stddev number Standard deviation of the distribution.
--- @param mean number The mean of the distribution.
--- @return number number Normally distributed random number with variance (stddev)² and the specified mean.
function love.math.randomNormal(stddev, mean) return 0 end

--- Sets the seed of the random number generator using the specified integer number. This is called internally at startup, so you generally don't need to call it yourself.
---
--- @param seed number The integer number with which you want to seed the randomization. Must be within the range of 2^53 - 1.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.setRandomSeed(seed) return  end

--- Sets the seed of the random number generator using the specified integer number. This is called internally at startup, so you generally don't need to call it yourself.
---
--- @param low number The lower 32 bits of the seed value. Must be within the range of 2^32 - 1.
--- @param high number The higher 32 bits of the seed value. Must be within the range of 2^32 - 1.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.setRandomSeed(low, high) return  end

--- Sets the current state of the random number generator. The value used as an argument for this function is an opaque implementation-dependent string and should only originate from a previous call to love.math.getRandomState.
--- 
--- This is different from love.math.setRandomSeed in that setRandomState directly sets the random number generator's current implementation-dependent state, whereas setRandomSeed gives it a new seed value.
---
--- @param state string The new state of the random number generator, represented as a string. This should originate from a previous call to love.math.getRandomState.
--- @return nil
function love.math.setRandomState(state) return  end

--- Decomposes a simple convex or concave polygon into triangles.
---
--- @param polygon table Polygon to triangulate. Must not intersect itself.
--- @return table triangles List of triangles the polygon is composed of, in the form of {{x1, y1, x2, y2, x3, y3},  {x1, y1, x2, y2, x3, y3}, ...}.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.triangulate(polygon) return {} end

--- Decomposes a simple convex or concave polygon into triangles.
---
--- @param x1 number The position of the first vertex of the polygon on the x-axis.
--- @param y1 number The position of the first vertex of the polygon on the y-axis.
--- @param x2 number The position of the second vertex of the polygon on the x-axis.
--- @param y2 number The position of the second vertex of the polygon on the y-axis.
--- @param x3 number The position of the third vertex of the polygon on the x-axis.
--- @param y3 number The position of the third vertex of the polygon on the y-axis.
--- @return table triangles List of triangles the polygon is composed of, in the form of {{x1, y1, x2, y2, x3, y3},  {x1, y1, x2, y2, x3, y3}, ...}.
--- @diagnostic disable-next-line: duplicate-set-field
function love.math.triangulate(x1, y1, x2, y2, x3, y3) return {} end

--#endregion functions
