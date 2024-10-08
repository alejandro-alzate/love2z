--- @param x number
--- @param y number
--- @param radius number
--- @param angle1 number
--- @param angle2 number
--- @param segments number?
--- @param arcType ArcType?
function love.graphics.arc(x, y, radius, angle1, angle2, segments, arcType) end

---| Draws an arc.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
--- @param x number
--- @param y number
--- @param radius number
--- @param segments number?
function love.graphics.circle(x, y, radius, segments) end

---| Draws a circle.
--- @param r number
--- @param g number
--- @param b number
--- @param a number?
function love.graphics.clear(r, g, b, a) end

---| Clears the screen or active Canvas to the specified color.
function love.graphics.discard() end

---| Discards the contents of the screen or active Canvas.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param drawable Drawable
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws objects on screen.
--- @param mesh Mesh
--- @param instances table
function love.graphics.drawInstanced(mesh, instances) end

---| Draws many instances of a Mesh with a single draw call, using hardware geometry instancing.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param arrayImage Image
--- @param layer number
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.drawLayer(arrayImage, layer, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws a layer of an Array Texture.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param quad Quad
--- @param image Image
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.drawq(quad, image, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draw a Quad with the specified Image on screen.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param x number
--- @param y number
--- @param a number
--- @param b number
--- @param segments number?
function love.graphics.ellipse(x, y, a, b, segments) end

---| Draws an ellipse.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.flushBatch() end

---| Immediately renders any pending automatically batched draws.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param ... number
function love.graphics.line(x1, y1, x2, y2, ...) end

---| Draws lines between points.
--- @param x number
--- @param y number
function love.graphics.point(x, y) end

---| Draws a point.
---|
---> ***Available since LÖVE 0.3.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
--- @param x number
--- @param y number
--- @param ... number
function love.graphics.points(x, y, ...) end

---| Draws one or more points.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param ... number
function love.graphics.polygon(x1, y1, x2, y2, ...) end

---| Draw a polygon.
---|
---> ***Available since LÖVE 0.4.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.present() end

---| Displays the results of drawing operations on the screen.
--- @param string string
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.print(string, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws text on screen. If no Font is set, one will be created and set (once) if needed.
--- @param string string
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
--- @param wrapWidth number?
--- @param align AlignMode?
function love.graphics.printf(string, x, y, r, sx, sy, ox, oy, kx, ky, wrapWidth, align) end

---| Draws formatted text, with word wrap and alignment.
--- @param quad Quad
--- @param image Image
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.quad(quad, image, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws a quadrilateral shape.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param x number
--- @param y number
--- @param width number
--- @param height number
--- @param r number?
function love.graphics.rectangle(x, y, width, height, r) end

---| Draws a rectangle.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
--- @param drawable Drawable
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.stencil(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws geometry as a stencil.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param x1 number
--- @param y1 number
--- @param x2 number
--- @param y2 number
--- @param x3 number
--- @param y3 number
function love.graphics.triangle(x1, y1, x2, y2, x3, y3) end

---| Draws a triangle.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
---
--- @param filename string
function love.graphics.captureScreenshot(filename) end

---| Creates a screenshot once the current frame is done.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param width number
--- @param height number
--- @param format ImageFormat?
function love.graphics.newArrayImage(width, height, format) end

---| Creates a new array Image.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param width number
--- @param height number
--- @param format CanvasFormat?
--- @param mipmapMode MipmapMode?
function love.graphics.newCanvas(width, height, format, mipmapMode) end

---| Creates a new Canvas.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
--- @param size number
--- @param format ImageFormat?
function love.graphics.newCubeImage(size, format) end

---| Creates a new cubemap Image.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param filename string
--- @param size number?
function love.graphics.newFont(filename, size) end

---| Creates a new Font from a TrueType Font or BMFont file.
--- @param width number
--- @param height number
--- @param format FramebufferFormat?
function love.graphics.newFramebuffer(width, height, format) end

---| Creates a new Framebuffer.
---|
---> ***Available since LÖVE 0.7.0***
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
--- @param filename string
--- @param flags ImageFlags?
function love.graphics.newImage(filename, flags) end

---| Creates a new Image.
--- @param filename string
--- @param glyphs string
--- @param extraSpacing number?
function love.graphics.newImageFont(filename, glyphs, extraSpacing) end

---| Creates a new Font by loading a specifically formatted image.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This function is not supported in earlier versions.
--- @param vertices table
--- @param indices table
--- @param mode DrawMode
--- @param attributeData table?
--- @param attributeTypes table?
--- @param bufferDataUsage BufferDataUsage?
function love.graphics.newMesh(vertices, indices, mode, attributeData, attributeTypes, bufferDataUsage) end

---| Creates a new Mesh.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @param image Image
--- @param speed number
function love.graphics.newParticleSystem(image, speed) end

---| Creates a new ParticleSystem.
--- @param code string
function love.graphics.newPixelEffect(code) end

---| Creates a new PixelEffect.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param left number
--- @param top number
--- @param width number
--- @param height number
--- @param imageWidth number?
--- @param imageHeight number?
function love.graphics.newQuad(left, top, width, height, imageWidth, imageHeight) end

---| Creates a new Quad.
function love.graphics.newScreenshot() end

---| Creates a screenshot and returns the ImageData.
---|
---> ***Removed in LÖVE 11.0***
---|
---| This function is not supported in that and later versions.
--- @param vertexCode string
--- @param fragmentCode string
function love.graphics.newShader(vertexCode, fragmentCode) end

---| Creates a new Shader.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @param image Image
--- @param maxQuads number
--- @param bufferDataUsage BufferDataUsage?
function love.graphics.newSpriteBatch(image, maxQuads, bufferDataUsage) end

---| Creates a new SpriteBatch.
function love.graphics.newStencil() end

---| Creates a new stencil.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param string string
--- @param font Font?
function love.graphics.newText(string, font) end

---| Creates a new drawable Text object.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param filename string
--- @param flags VideoFlags?
function love.graphics.newVideo(filename, flags) end

---| Creates a new Video.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param width number
--- @param height number
--- @param format ImageFormat?
function love.graphics.newVolumeImage(width, height, format) end

---| Creates a new volume Image.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param filename string
--- @param size number?
function love.graphics.setNewFont(filename, size) end

---| Creates and sets a new Font.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
--- @param vertexCode string
--- @param fragmentCode string
function love.graphics.validateShader(vertexCode, fragmentCode) end

---| Validates shader code.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
---
function love.graphics.getBackgroundColor() end

---| Gets the current background color.
--- @return number
--- @return number
--- @return number
--- @return number
function love.graphics.getBackgroundColor() end

---| Gets the current background color.
--- @return BlendMode
--- @return BlendAlphaMode?
function love.graphics.getBlendMode() end

---| Gets the blending mode.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This function is not supported in earlier versions.
--- @return Canvas?
function love.graphics.getCanvas() end

---| Returns the current target Canvas.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
--- @return number
--- @return number
--- @return number
--- @return number
function love.graphics.getColor() end

---| Gets the current color.
--- @return number
--- @return number
--- @return number
--- @return number
function love.graphics.getColorMask() end

---| Gets the active color components used when drawing.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @return ColorMode
function love.graphics.getColorMode() end

---| Gets the color mode (which controls how images are affected by the current color).
---|
---> ***Available since LÖVE 0.2.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @return Filter
--- @return Filter
function love.graphics.getDefaultFilter() end

---| Returns the default scaling filters used with Images, Canvases, and Fonts.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @return Filter
--- @return Filter
function love.graphics.getDefaultImageFilter() end

---| Returns the default scaling filters.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @return DepthMode
--- @return boolean
function love.graphics.getDepthMode() end

---| Gets the current depth test mode and whether writing to the depth buffer is enabled.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @return Font?
function love.graphics.getFont() end

---| Gets the current Font object.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @return FrontFaceWinding
function love.graphics.getFrontFaceWinding() end

---| Gets whether triangles with clockwise- or counterclockwise-ordered vertices are considered front-facing.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @return LineJoin
function love.graphics.getLineJoin() end

---| Gets the line join style.
--- @return number
--- @return number
function love.graphics.getLineStipple() end

---| Gets the current line stipple.
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
--- @return LineStyle
function love.graphics.getLineStyle() end

---| Gets the line style.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
--- @return number
function love.graphics.getLineWidth() end

---| Gets the current line width.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
--- @return MeshCullMode
function love.graphics.getMeshCullMode() end

---| Gets whether back-facing triangles in a Mesh are culled.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @return PixelEffect?
function love.graphics.getPixelEffect() end

---| Returns the current PixelEffect.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @return number
function love.graphics.getPointSize() end

---| Gets the point size.
--- @return PointStyle
function love.graphics.getPointStyle() end

---| Gets the current point style.
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
--- @return number
--- @return number
--- @return number
--- @return number
function love.graphics.getScissor() end

---| Gets the current scissor box.
---|
---> ***Available since LÖVE 0.4.0***
---|
---| This function is not supported in earlier versions.
--- @return Shader?
function love.graphics.getShader() end

---| Gets the current Shader.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @return number
function love.graphics.getStackDepth() end

---| Gets the current depth of the transform / state stack (the number of pushes without corresponding pops).
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @return StencilTestCompareMode
--- @return StencilTestAction
--- @return StencilTestAction
--- @return StencilTestAction
--- @return number
--- @return number
function love.graphics.getStencilTest() end

---| Gets the current stencil test configuration.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param x number
--- @param y number
--- @param width number
--- @param height number
function love.graphics.intersectScissor(x, y, width, height) end

---| Sets the scissor to the rectangle created by the intersection of the specified rectangle with the existing scissor.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.isActive() end

---| Gets whether the graphics module is able to be used.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.isGammaCorrect() end

---| Gets whether gamma-correct rendering is enabled.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param feature string
function love.graphics.isSupported(feature) end

---| Checks for the support of graphics related functions.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.isWireframe() end

---| Gets whether wireframe mode is used when drawing.
---|
---> ***Available since LÖVE 0.9.1***
---|
---| This function is not supported in earlier versions.
function love.graphics.reset() end

---| Resets the current graphics settings.
--- @param r number
--- @param g number
--- @param b number
--- @param a number?
function love.graphics.setBackgroundColor(r, g, b, a) end

---| Sets the background color.
--- @param mode BlendMode
--- @param alphaMode BlendAlphaMode?
function love.graphics.setBlendMode(mode, alphaMode) end

---| Sets the blending mode.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This function is not supported in earlier versions.
--- @param canvas Canvas?
function love.graphics.setCanvas(canvas) end

---| Captures drawing operations to a Canvas
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
--- @param r number
--- @param g number
--- @param b number
--- @param a number?
function love.graphics.setColor(r, g, b, a) end

---| Sets the color used for drawing.
--- @param r number
--- @param g number
--- @param b number
--- @param a number?
function love.graphics.setColorMask(r, g, b, a) end

---| Sets the color mask. Enables or disables specific color components when rendering.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @param mode ColorMode
function love.graphics.setColorMode(mode) end

---| Sets the color mode (which controls how images are affected by the current color).
---|
---> ***Available since LÖVE 0.2.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param filter Filter
--- @param filter Filter
function love.graphics.setDefaultFilter(filter, filter) end

---| Sets the default scaling filters used with Images, Canvases, and Fonts.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @param filter Filter
--- @param filter Filter
function love.graphics.setDefaultImageFilter(filter, filter) end

---| Sets the default scaling filters.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param mode DepthMode
--- @param write boolean
function love.graphics.setDepthMode(mode, write) end

---| Configures depth testing and writing to the depth buffer.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param font Font?
function love.graphics.setFont(font) end

---| Set an already-loaded Font as the current font.
--- @param winding FrontFaceWinding
function love.graphics.setFrontFaceWinding(winding) end

---| Sets whether triangles with clockwise- or counterclockwise-ordered vertices are considered front-facing.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param drawable Drawable
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.setInvertedStencil(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Defines an inverted stencil.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
--- @param width number
--- @param style LineStyle
function love.graphics.setLine(width, style) end

---| Sets the line width and style.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param join LineJoin
function love.graphics.setLineJoin(join) end

---| Sets the line join style.
--- @param factor number
--- @param pattern number
function love.graphics.setLineStipple(factor, pattern) end

---| Sets the line stipple pattern.
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
--- @param style LineStyle
function love.graphics.setLineStyle(style) end

---| Sets the line style.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
--- @param width number
function love.graphics.setLineWidth(width) end

---| Sets the line width.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
--- @param mode MeshCullMode
function love.graphics.setMeshCullMode(mode) end

---| Sets whether back-facing triangles in a Mesh are culled.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param effect PixelEffect?
function love.graphics.setPixelEffect(effect) end

---| Routes drawing operations through a pixel shader.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param size number
--- @param style PointStyle
function love.graphics.setPoint(size, style) end

---| Sets the point size and style.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @param size number
function love.graphics.setPointSize(size) end

---| Sets the point size.
--- @param style PointStyle
function love.graphics.setPointStyle(style) end

---| Sets the point style.
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
--- @param framebuffer Framebuffer?
function love.graphics.setRenderTarget(framebuffer) end

---| Captures drawing operations to a Framebuffer
---|
---> ***Available since LÖVE 0.7.0***
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
--- @param x number
--- @param y number
--- @param width number
--- @param height number
function love.graphics.setScissor(x, y, width, height) end

---| Sets or disables scissor.
---|
---> ***Available since LÖVE 0.4.0***
---|
---| This function is not supported in earlier versions.
--- @param shader Shader?
function love.graphics.setShader(shader) end

---| Routes drawing operations through a shader.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @param drawable Drawable
--- @param x number?
--- @param y number?
--- @param r number?
--- @param sx number?
--- @param sy number?
--- @param ox number?
--- @param oy number?
--- @param kx number?
--- @param ky number?
function love.graphics.setStencil(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Defines or releases a stencil.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
--- @param compareMode StencilTestCompareMode
--- @param action StencilTestAction
--- @param action StencilTestAction
--- @param action StencilTestAction
--- @param reference number
--- @param mask number
function love.graphics.setStencilTest(compareMode, action, action, action, reference, mask) end

---| Configures or disables stencil testing.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
--- @param enable boolean
function love.graphics.setWireframe(enable) end

---| Sets whether wireframe lines will be used when drawing.
---|
---> ***Available since LÖVE 0.9.1***
---|
---| This function is not supported in earlier versions.
---
--- @param transform Transform
function love.graphics.applyTransform(transform) end

---| Applies the given Transform object to the current coordinate transformation.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param x number
--- @param y number
function love.graphics.inverseTransformPoint(x, y) end

---| Converts the given 2D position from screen-space into global coordinates.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.origin() end

---| Resets the current coordinate transformation.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.pop() end

---| Pops the current coordinate transformation from the transformation stack.
--- @param stackType StackType?
function love.graphics.push(stackType) end

---| Copies and pushes the current coordinate transformation to the transformation stack.
--- @param transform Transform
function love.graphics.replaceTransform(transform) end

---| Replaces the current coordinate transformation with the given Transform object.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param angle number
function love.graphics.rotate(angle) end

---| Rotates the coordinate system in two dimensions.
--- @param scaleX number
--- @param scaleY number?
function love.graphics.scale(scaleX, scaleY) end

---| Scales the coordinate system in two dimensions.
--- @param xShear number
--- @param yShear number?
function love.graphics.shear(xShear, yShear) end

---| Shears the coordinate system.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
--- @param x number
--- @param y number
function love.graphics.transformPoint(x, y) end

---| Converts the given 2D position from global coordinates into screen-space.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @param x number
--- @param y number
function love.graphics.translate(x, y) end

---| Translates the coordinate system in two dimensions.
---
--- @param width number
--- @param height number
--- @param fullscreen boolean
function love.graphics.checkMode(width, height, fullscreen) end

---| Checks if a display mode is supported.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getCaption() end

---| Gets the window caption.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @return number
function love.graphics.getDPIScale() end

---| Gets the DPI scale factor of the window.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @return number
--- @return number
function love.graphics.getDimensions() end

---| Gets the width and height of the window.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
--- @return number
function love.graphics.getHeight() end

---| Gets the height in pixels of the window.
---|
---> ***Available since LÖVE 0.2.1***
---|
---| This function is not supported in earlier versions.
--- @return Mode
function love.graphics.getMode() end

---| Returns the current display mode.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @return table
function love.graphics.getModes() end

---| Gets a list of supported fullscreen modes.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
--- @return number
--- @return number
function love.graphics.getPixelDimensions() end

---| Gets the width and height in pixels of the window.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
--- @return number
function love.graphics.getPixelHeight() end

---| Gets the height in pixels of the window.
---|
---> ***Available since LÖVE 11.0
