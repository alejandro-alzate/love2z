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
---| "row"			#		The matrix is row-major:
---| "column"			#		The matrix is column-major:


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- A Bézier curve object that can evaluate and render Bézier curves of arbitrary degree.
--- 
--- For more information on Bézier curves check this great article on Wikipedia.
--- @class BezierCurve: Object
local BezierCurve = {}

--- Evaluate Bézier curve at parameter t. The parameter must be between 0 and 1 (inclusive).
--- 
--- This function can be used to move objects along paths or tween parameters. However it should not be used to render the curve, see BezierCurve:render for that purpose.
---
--- @param t number Where to evaluate the curve.
--- @return number x x coordinate of the curve at parameter t.
--- @return number y y coordinate of the curve at parameter t.
function BezierCurve:evaluate(t) return 0, 0 end
--- Get coordinates of the i-th control point. Indices start with 1.
---
--- @param i number Index of the control point.
--- @return number x Position of the control point along the x axis.
--- @return number y Position of the control point along the y axis.
function BezierCurve:getControlPoint(i) return 0, 0 end
--- Get the number of control points in the Bézier curve.
---
--- @return number count The number of control points.
function BezierCurve:getControlPointCount() return 0 end
--- Get degree of the Bézier curve. The degree is equal to number-of-control-points - 1.
---
--- @return number degree Degree of the Bézier curve.
function BezierCurve:getDegree() return 0 end
--- Get the derivative of the Bézier curve.
--- 
--- This function can be used to rotate sprites moving along a curve in the direction of the movement and compute the direction perpendicular to the curve at some parameter t.
---
--- @return BezierCurve derivative The derivative curve.
function BezierCurve:getDerivative() return {} end
--- Gets a BezierCurve that corresponds to the specified segment of this BezierCurve.
---
--- @param startpoint number The starting point along the curve. Must be between 0 and 1.
--- @param endpoint number The end of the segment. Must be between 0 and 1.
--- @return BezierCurve curve A BezierCurve that corresponds to the specified segment.
function BezierCurve:getSegment(startpoint, endpoint) return {} end
--- Insert control point as the new i-th control point. Existing control points from i onwards are pushed back by 1. Indices start with 1. Negative indices wrap around: -1 is the last control point, -2 the one before the last, etc.
---
--- @param x number Position of the control point along the x axis.
--- @param y number Position of the control point along the y axis.
--- @param i number Index of the control point.
--- @return nil
function BezierCurve:insertControlPoint(x, y, i) return  end
--- Removes the specified control point.
---
--- @param index number The index of the control point to remove.
--- @return nil
function BezierCurve:removeControlPoint(index) return  end
--- Get a list of coordinates to be used with love.graphics.line.
--- 
--- This function samples the Bézier curve using recursive subdivision. You can control the recursion depth using the depth parameter.
--- 
--- If you are just interested to know the position on the curve given a parameter, use BezierCurve:evaluate.
---
--- @param depth number Number of recursive subdivision steps.
--- @return table coordinates List of x,y-coordinate pairs of points on the curve.
function BezierCurve:render(depth) return {} end
--- Get a list of coordinates on a specific part of the curve, to be used with love.graphics.line.
--- 
--- This function samples the Bézier curve using recursive subdivision. You can control the recursion depth using the depth parameter.
--- 
--- If you are just need to know the position on the curve given a parameter, use BezierCurve:evaluate.
---
--- @param startpoint number The starting point along the curve. Must be between 0 and 1.
--- @param endpoint number The end of the segment to render. Must be between 0 and 1.
--- @param depth number Number of recursive subdivision steps.
--- @return table coordinates List of x,y-coordinate pairs of points on the specified part of the curve.
function BezierCurve:renderSegment(startpoint, endpoint, depth) return {} end
--- Rotate the Bézier curve by an angle.
---
--- @param angle number Rotation angle in radians.
--- @param ox number X coordinate of the rotation center.
--- @param oy number Y coordinate of the rotation center.
--- @return nil
function BezierCurve:rotate(angle, ox, oy) return  end
--- Scale the Bézier curve by a factor.
---
--- @param s number Scale factor.
--- @param ox number X coordinate of the scaling center.
--- @param oy number Y coordinate of the scaling center.
--- @return nil
function BezierCurve:scale(s, ox, oy) return  end
--- Set coordinates of the i-th control point. Indices start with 1.
---
--- @param i number Index of the control point.
--- @param x number Position of the control point along the x axis.
--- @param y number Position of the control point along the y axis.
--- @return nil
function BezierCurve:setControlPoint(i, x, y) return  end
--- Move the Bézier curve by an offset.
---
--- @param dx number Offset along the x axis.
--- @param dy number Offset along the y axis.
--- @return nil
function BezierCurve:translate(dx, dy) return  end

--- A random number generation object which has its own random state.
--- @class RandomGenerator: Object
local RandomGenerator = {}

--- Gets the seed of the random number generator object.
--- 
--- The seed is split into two numbers due to Lua's use of doubles for all number values - doubles can't accurately represent integer  values above 2^53, but the seed value is an integer number in the range of 2^64 - 1.
---
--- @return number low Integer number representing the lower 32 bits of the RandomGenerator's 64 bit seed value.
--- @return number high Integer number representing the higher 32 bits of the RandomGenerator's 64 bit seed value.
function RandomGenerator:getSeed() return 0, 0 end
--- Gets the current state of the random number generator. This returns an opaque string which is only useful for later use with RandomGenerator:setState in the same major version of LÖVE.
--- 
--- This is different from RandomGenerator:getSeed in that getState gets the RandomGenerator's current state, whereas getSeed gets the previously set seed number.
---
--- @return string state The current state of the RandomGenerator object, represented as a string.
function RandomGenerator:getState() return "" end
--- Generates a pseudo-random number in a platform independent manner.
---
--- @return number number The pseudo-random number.
--- @diagnostic disable-next-line: duplicate-set-field
function RandomGenerator:random() return 0 end
--- Generates a pseudo-random number in a platform independent manner.
---
--- @param max number The maximum possible value it should return.
--- @return number number The pseudo-random integer number.
--- @diagnostic disable-next-line: duplicate-set-field
function RandomGenerator:random(max) return 0 end
--- Generates a pseudo-random number in a platform independent manner.
---
--- @param min number The minimum possible value it should return.
--- @param max number The maximum possible value it should return.
--- @return number number The pseudo-random integer number.
--- @diagnostic disable-next-line: duplicate-set-field
function RandomGenerator:random(min, max) return 0 end
--- Get a normally distributed pseudo random number.
---
--- @param stddev number Standard deviation of the distribution.
--- @param mean number The mean of the distribution.
--- @return number number Normally distributed random number with variance (stddev)² and the specified mean.
function RandomGenerator:randomNormal(stddev, mean) return 0 end
--- Sets the seed of the random number generator using the specified integer number.
---
--- @param seed number The integer number with which you want to seed the randomization. Must be within the range of 2^53.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function RandomGenerator:setSeed(seed) return  end
--- Sets the seed of the random number generator using the specified integer number.
---
--- @param low number The lower 32 bits of the seed value. Must be within the range of 2^32 - 1.
--- @param high number The higher 32 bits of the seed value. Must be within the range of 2^32 - 1.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function RandomGenerator:setSeed(low, high) return  end
--- Sets the current state of the random number generator. The value used as an argument for this function is an opaque string and should only originate from a previous call to RandomGenerator:getState in the same major version of LÖVE.
--- 
--- This is different from RandomGenerator:setSeed in that setState directly sets the RandomGenerator's current implementation-dependent state, whereas setSeed gives it a new seed value.
---
--- @param state string The new state of the RandomGenerator object, represented as a string. This should originate from a previous call to RandomGenerator:getState.
--- @return nil
function RandomGenerator:setState(state) return  end

--- Object containing a coordinate system transformation.
--- 
--- The love.graphics module has several functions and function variants which accept Transform objects.
--- @class Transform: Object
local Transform = {}

--- Applies the given other Transform object to this one.
--- 
--- This effectively multiplies this Transform's internal transformation matrix with the other Transform's (i.e. self * other), and stores the result in this object.
---
--- @param other Transform The other Transform object to apply to this Transform.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:apply(other) return {} end
--- Creates a new copy of this Transform.
---
--- @return Transform clone The copy of this Transform.
function Transform:clone() return {} end
--- Gets the internal 4x4 transformation matrix stored by this Transform. The matrix is returned in row-major order.
---
--- @return number e1_1 The first column of the first row of the matrix.
--- @return number e1_2 The second column of the first row of the matrix.
--- @return number e1_3 The third column of the first row of the matrix.
--- @return number e1_4 The fourth column of the first row of the matrix.
--- @return number e2_1 The first column of the second row of the matrix.
--- @return number e2_2 The second column of the second row of the matrix.
--- @return number e2_3 The third column of the second row of the matrix.
--- @return number e2_4 The fourth column of the second row of the matrix.
--- @return number e3_1 The first column of the third row of the matrix.
--- @return number e3_2 The second column of the third row of the matrix.
--- @return number e3_3 The third column of the third row of the matrix.
--- @return number e3_4 The fourth column of the third row of the matrix.
--- @return number e4_1 The first column of the fourth row of the matrix.
--- @return number e4_2 The second column of the fourth row of the matrix.
--- @return number e4_3 The third column of the fourth row of the matrix.
--- @return number e4_4 The fourth column of the fourth row of the matrix.
function Transform:getMatrix() return 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 end
--- Creates a new Transform containing the inverse of this Transform.
---
--- @return Transform inverse A new Transform object representing the inverse of this Transform's matrix.
function Transform:inverse() return {} end
--- Applies the reverse of the Transform object's transformation to the given 2D position.
--- 
--- This effectively converts the given position from the local coordinate space of the Transform into global coordinates.
--- 
--- One use of this method can be to convert a screen-space mouse position into global world coordinates, if the given Transform has transformations applied that are used for a camera system in-game.
---
--- @param localX number The x component of the position with the transform applied.
--- @param localY number The y component of the position with the transform applied.
--- @return number globalX The x component of the position in global coordinates.
--- @return number globalY The y component of the position in global coordinates.
function Transform:inverseTransformPoint(localX, localY) return 0, 0 end
--- Checks whether the Transform is an affine transformation.
---
--- @return boolean affine true if the transform object is an affine transformation, false otherwise.
function Transform:isAffine2DTransform() return true end
--- Resets the Transform to an identity state. All previously applied transformations are erased.
---
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:reset() return {} end
--- Applies a rotation to the Transform's coordinate system. This method does not reset any previously applied transformations.
---
--- @param angle number The relative angle in radians to rotate this Transform by.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:rotate(angle) return {} end
--- Scales the Transform's coordinate system. This method does not reset any previously applied transformations.
---
--- @param sx number The relative scale factor along the x-axis.
--- @param sy number The relative scale factor along the y-axis.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:scale(sx, sy) return {} end
--- Directly sets the Transform's internal 4x4 transformation matrix.
---
--- @param e1_1 number The first column of the first row of the matrix.
--- @param e1_2 number The second column of the first row of the matrix.
--- @param e1_3 number The third column of the first row of the matrix.
--- @param e1_4 number The fourth column of the first row of the matrix.
--- @param e2_1 number The first column of the second row of the matrix.
--- @param e2_2 number The second column of the second row of the matrix.
--- @param e2_3 number The third column of the second row of the matrix.
--- @param e2_4 number The fourth column of the second row of the matrix.
--- @param e3_1 number The first column of the third row of the matrix.
--- @param e3_2 number The second column of the third row of the matrix.
--- @param e3_3 number The third column of the third row of the matrix.
--- @param e3_4 number The fourth column of the third row of the matrix.
--- @param e4_1 number The first column of the fourth row of the matrix.
--- @param e4_2 number The second column of the fourth row of the matrix.
--- @param e4_3 number The third column of the fourth row of the matrix.
--- @param e4_4 number The fourth column of the fourth row of the matrix.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
--- @diagnostic disable-next-line: duplicate-set-field
function Transform:setMatrix(e1_1, e1_2, e1_3, e1_4, e2_1, e2_2, e2_3, e2_4, e3_1, e3_2, e3_3, e3_4, e4_1, e4_2, e4_3, e4_4) return {} end
--- Directly sets the Transform's internal 4x4 transformation matrix.
---
--- @param layout MatrixLayout How to interpret the matrix element arguments (row-major or column-major).
--- @param e1_1 number The first column of the first row of the matrix.
--- @param e1_2 number The second column of the first row or the first column of the second row of the matrix, depending on the specified layout.
--- @param e1_3 number The third column/row of the first row/column of the matrix.
--- @param e1_4 number The fourth column/row of the first row/column of the matrix.
--- @param e2_1 number The first column/row of the second row/column of the matrix.
--- @param e2_2 number The second column/row of the second row/column of the matrix.
--- @param e2_3 number The third column/row of the second row/column of the matrix.
--- @param e2_4 number The fourth column/row of the second row/column of the matrix.
--- @param e3_1 number The first column/row of the third row/column of the matrix.
--- @param e3_2 number The second column/row of the third row/column of the matrix.
--- @param e3_3 number The third column/row of the third row/column of the matrix.
--- @param e3_4 number The fourth column/row of the third row/column of the matrix.
--- @param e4_1 number The first column/row of the fourth row/column of the matrix.
--- @param e4_2 number The second column/row of the fourth row/column of the matrix.
--- @param e4_3 number The third column/row of the fourth row/column of the matrix.
--- @param e4_4 number The fourth column of the fourth row of the matrix.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
--- @diagnostic disable-next-line: duplicate-set-field
function Transform:setMatrix(layout, e1_1, e1_2, e1_3, e1_4, e2_1, e2_2, e2_3, e2_4, e3_1, e3_2, e3_3, e3_4, e4_1, e4_2, e4_3, e4_4) return {} end
--- Directly sets the Transform's internal 4x4 transformation matrix.
---
--- @param layout MatrixLayout How to interpret the matrix element arguments (row-major or column-major).
--- @param matrix table A flat table containing the 16 matrix elements.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
--- @diagnostic disable-next-line: duplicate-set-field
function Transform:setMatrix(layout, matrix) return {} end
--- Directly sets the Transform's internal 4x4 transformation matrix.
---
--- @param layout MatrixLayout How to interpret the matrix element arguments (row-major or column-major).
--- @param matrix table A table of 4 tables, with each sub-table containing 4 matrix elements.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
--- @diagnostic disable-next-line: duplicate-set-field
function Transform:setMatrix(layout, matrix) return {} end
--- Resets the Transform to the specified transformation parameters.
---
--- @param x number The position of the Transform on the x-axis.
--- @param y number The position of the Transform on the y-axis.
--- @param angle number The orientation of the Transform in radians.
--- @param sx number Scale factor on the x-axis.
--- @param sy number Scale factor on the y-axis.
--- @param ox number Origin offset on the x-axis.
--- @param oy number Origin offset on the y-axis.
--- @param kx number Shearing / skew factor on the x-axis.
--- @param ky number Shearing / skew factor on the y-axis.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:setTransformation(x, y, angle, sx, sy, ox, oy, kx, ky) return {} end
--- Applies a shear factor (skew) to the Transform's coordinate system. This method does not reset any previously applied transformations.
---
--- @param kx number The shear factor along the x-axis.
--- @param ky number The shear factor along the y-axis.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:shear(kx, ky) return {} end
--- Applies the Transform object's transformation to the given 2D position.
--- 
--- This effectively converts the given position from global coordinates into the local coordinate space of the Transform.
---
--- @param globalX number The x component of the position in global coordinates.
--- @param globalY number The y component of the position in global coordinates.
--- @return number localX The x component of the position with the transform applied.
--- @return number localY The y component of the position with the transform applied.
function Transform:transformPoint(globalX, globalY) return 0, 0 end
--- Applies a translation to the Transform's coordinate system. This method does not reset any previously applied transformations.
---
--- @param dx number The relative translation along the x-axis.
--- @param dy number The relative translation along the y-axis.
--- @return Transform transform The Transform object the method was called on. Allows easily chaining Transform methods.
function Transform:translate(dx, dy) return {} end

--#endregion types
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
