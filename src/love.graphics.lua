--- The primary responsibility for the love.graphics module is the drawing of lines, shapes, text, Images and other Drawable objects onto the screen. Its secondary responsibilities include loading external files (including Images and Fonts) into memory, creating specialized objects (such as ParticleSystems or Canvases) and managing screen geometry.
love.graphics = {}
--- @class Canvas: Object
---| Off-screen render target.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This class is not supported in earlier versions.

--- @class Drawable: Object
---| Superclass for all things that can be drawn on screen.

--- @class Font: Object
---| Defines the shape of characters than can be drawn onto the screen.

--- @class Framebuffer: Object
---| Off-screen render target.
---|
---> ***Available since LÖVE 0.7.0***
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This class is not supported in that and later versions.

--- @class Image: Object, Drawable
---| Drawable image type.

--- @class Mesh: Object, Drawable
---| A 2D polygon mesh used for drawing arbitrary textured shapes.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This class is not supported in earlier versions.

--- @class ParticleSystem: Object, Drawable
---| Used to create cool effects, like fire.

--- @class PixelEffect: Object
---| Pixel shader effect.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This class is not supported in that and later versions.

--- @class Quad: Object
---| A quadrilateral with texture coordinate information.

--- @class Shader: Object
---| Shader effect.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This class is not supported in earlier versions.
--- @class SpriteBatch: Object, Drawable
---| Store image positions in a buffer, and draw it in one call.
--- @class Text: Object, Drawable
---| Drawable text.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This class is not supported in earlier versions.

--- @class Texture: Object
---| Superclass for drawable objects which represent a texture.
---|
---> ***Available since LÖVE 0.9.1***
---|
---| This class is not supported in earlier versions.

--- @class Video: Object, Drawable
---| A drawable video.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This class is not supported in earlier versions.
---
function love.graphics.arc(x, y, radius, angle1, angle2, segments, arcType) end

---| Draws an arc.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.circle(x, y, radius, segments) end

---| Draws a circle.
function love.graphics.clear(r, g, b, a) end

---| Clears the screen or active Canvas to the specified color.
function love.graphics.discard() end

---| Discards the contents of the screen or active Canvas.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws objects on screen.
function love.graphics.drawInstanced(mesh, instances) end

---| Draws many instances of a Mesh with a single draw call, using hardware geometry instancing.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.drawLayer(arrayImage, layer, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws a layer of an Array Texture.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.drawq(quad, image, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draw a Quad with the specified Image on screen.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
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
function love.graphics.line(x1, y1, x2, y2, ...) end

---| Draws lines between points.
function love.graphics.point(x, y) end

---| Draws a point.
---|
---> ***Available since LÖVE 0.3.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.points(x, y, ...) end

---| Draws one or more points.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.polygon(x1, y1, x2, y2, ...) end

---| Draw a polygon.
---|
---> ***Available since LÖVE 0.4.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.present() end

---| Displays the results of drawing operations on the screen.
function love.graphics.print(string, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws text on screen. If no Font is set, one will be created and set (once) if needed.
function love.graphics.printf(string, x, y, r, sx, sy, ox, oy, kx, ky, wrapWidth, align) end

---| Draws formatted text, with word wrap and alignment.
function love.graphics.quad(quad, image, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws a quadrilateral shape.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.rectangle(x, y, width, height, r) end

---| Draws a rectangle.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.stencil(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Draws geometry as a stencil.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.triangle(x1, y1, x2, y2, x3, y3) end

---| Draws a triangle.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
---
function love.graphics.captureScreenshot(filename) end

---| Creates a screenshot once the current frame is done.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newArrayImage(width, height, format) end

---| Creates a new array Image.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newCanvas(width, height, format, mipmapMode) end

---| Creates a new Canvas.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newCubeImage(size, format) end

---| Creates a new cubemap Image.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newFont(filename, size) end

---| Creates a new Font from a TrueType Font or BMFont file.
function love.graphics.newFramebuffer(width, height, format) end

---| Creates a new Framebuffer.
---|
---> ***Available since LÖVE 0.7.0***
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.newImage(filename, flags) end

---| Creates a new Image.
function love.graphics.newImageFont(filename, glyphs, extraSpacing) end

---| Creates a new Font by loading a specifically formatted image.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newMesh(vertices, indices, mode, attributeData, attributeTypes, bufferDataUsage) end

---| Creates a new Mesh.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newParticleSystem(image, speed) end

---| Creates a new ParticleSystem.
function love.graphics.newPixelEffect(code) end

---| Creates a new PixelEffect.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.newQuad(left, top, width, height, imageWidth, imageHeight) end

---| Creates a new Quad.
function love.graphics.newScreenshot() end

---| Creates a screenshot and returns the ImageData.
---|
---> ***Removed in LÖVE 11.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.newShader(vertexCode, fragmentCode) end

---| Creates a new Shader.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
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
function love.graphics.newText(string, font) end

---| Creates a new drawable Text object.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newVideo(filename, flags) end

---| Creates a new Video.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.newVolumeImage(width, height, format) end

---| Creates a new volume Image.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setNewFont(filename, size) end

---| Creates and sets a new Font.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.validateShader(vertexCode, fragmentCode) end

---| Validates shader code.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
---
function love.graphics.getBackgroundColor() end

---| Gets the current background color.
function love.graphics.getBlendMode() end

---| Gets the blending mode.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getCanvas() end

---| Returns the current target Canvas.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getColor() end

---| Gets the current color.
function love.graphics.getColorMask() end

---| Gets the active color components used when drawing.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getColorMode() end

---| Gets the color mode (which controls how images are affected by the current color).
---|
---> ***Available since LÖVE 0.2.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getDefaultFilter() end

---| Returns the default scaling filters used with Images, Canvases, and Fonts.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getDefaultImageFilter() end

---| Returns the default scaling filters.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getDepthMode() end

---| Gets the current depth test mode and whether writing to the depth buffer is enabled.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getFont() end

---| Gets the current Font object.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getFrontFaceWinding() end

---| Gets whether triangles with clockwise- or counterclockwise-ordered vertices are considered front-facing.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getLineJoin() end

---| Gets the line join style.
function love.graphics.getLineStipple() end

---| Gets the current line stipple.
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getLineStyle() end

---| Gets the line style.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.getLineWidth() end

---| Gets the current line width.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.getMeshCullMode() end

---| Gets whether back-facing triangles in a Mesh are culled.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getPixelEffect() end

---| Returns the current PixelEffect.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getPointSize() end

---| Gets the point size.
function love.graphics.getPointStyle() end

---| Gets the current point style.
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getScissor() end

---| Gets the current scissor box.
---|
---> ***Available since LÖVE 0.4.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getShader() end

---| Gets the current Shader.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getStackDepth() end

---| Gets the current depth of the transform / state stack (the number of pushes without corresponding pops).
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getStencilTest() end

---| Gets the current stencil test configuration.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
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
function love.graphics.setBackgroundColor(r, g, b, a) end

---| Sets the background color.
function love.graphics.setBlendMode(mode, alphaMode) end

---| Sets the blending mode.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setCanvas(canvas) end

---| Captures drawing operations to a Canvas
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setColor(r, g, b, a) end

---| Sets the color used for drawing.
function love.graphics.setColorMask(r, g, b, a) end

---| Sets the color mask. Enables or disables specific color components when rendering.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setColorMode(mode) end

---| Sets the color mode (which controls how images are affected by the current color).
---|
---> ***Available since LÖVE 0.2.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setDefaultFilter(filter, filter) end

---| Sets the default scaling filters used with Images, Canvases, and Fonts.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setDefaultImageFilter(filter, filter) end

---| Sets the default scaling filters.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setDepthMode(mode, write) end

---| Configures depth testing and writing to the depth buffer.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setFont(font) end

---| Set an already-loaded Font as the current font.
function love.graphics.setFrontFaceWinding(winding) end

---| Sets whether triangles with clockwise- or counterclockwise-ordered vertices are considered front-facing.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setInvertedStencil(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Defines an inverted stencil.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setLine(width, style) end

---| Sets the line width and style.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setLineJoin(join) end

---| Sets the line join style.
function love.graphics.setLineStipple(factor, pattern) end

---| Sets the line stipple pattern.
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setLineStyle(style) end

---| Sets the line style.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.setLineWidth(width) end

---| Sets the line width.
---|
---> ***Available since LÖVE 0.3.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.setMeshCullMode(mode) end

---| Sets whether back-facing triangles in a Mesh are culled.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setPixelEffect(effect) end

---| Routes drawing operations through a pixel shader.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setPoint(size, style) end

---| Sets the point size and style.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setPointSize(size) end

---| Sets the point size.
function love.graphics.setPointStyle(style) end

---| Sets the point style.
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setRenderTarget(framebuffer) end

---| Captures drawing operations to a Framebuffer
---|
---> ***Available since LÖVE 0.7.0***
---|
---> ***Removed in LÖVE 0.8.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setScissor(x, y, width, height) end

---| Sets or disables scissor.
---|
---> ***Available since LÖVE 0.4.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setShader(shader) end

---| Routes drawing operations through a shader.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setStencil(drawable, x, y, r, sx, sy, ox, oy, kx, ky) end

---| Defines or releases a stencil.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setStencilTest(compareMode, action, action, action, reference, mask) end

---| Configures or disables stencil testing.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.setWireframe(enable) end

---| Sets whether wireframe lines will be used when drawing.
---|
---> ***Available since LÖVE 0.9.1***
---|
---| This function is not supported in earlier versions.
---
function love.graphics.applyTransform(transform) end

---| Applies the given Transform object to the current coordinate transformation.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
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
function love.graphics.push(stackType) end

---| Copies and pushes the current coordinate transformation to the transformation stack.
function love.graphics.replaceTransform(transform) end

---| Replaces the current coordinate transformation with the given Transform object.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.rotate(angle) end

---| Rotates the coordinate system in two dimensions.
function love.graphics.scale(scaleX, scaleY) end

---| Scales the coordinate system in two dimensions.
function love.graphics.shear(xShear, yShear) end

---| Shears the coordinate system.
---|
---> ***Available since LÖVE 0.8.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.transformPoint(x, y) end

---| Converts the given 2D position from global coordinates into screen-space.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.translate(x, y) end

---| Translates the coordinate system in two dimensions.
---
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
function love.graphics.getDPIScale() end

---| Gets the DPI scale factor of the window.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getDimensions() end

---| Gets the width and height of the window.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getHeight() end

---| Gets the height in pixels of the window.
---|
---> ***Available since LÖVE 0.2.1***
---|
---| This function is not supported in earlier versions.
function love.graphics.getMode() end

---| Returns the current display mode.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getModes() end

---| Gets a list of supported fullscreen modes.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getPixelDimensions() end

---| Gets the width and height in pixels of the window.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getPixelHeight() end

---| Gets the height in pixels of the window.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getPixelWidth() end

---| Gets the width in pixels of the window.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getWidth() end

---| Gets the width in pixels of the window.
---|
---> ***Available since LÖVE 0.2.1***
---|
---| This function is not supported in earlier versions.
function love.graphics.hasFocus() end

---| Checks if the game window has keyboard focus.
---|
---> ***Available since LÖVE 0.8.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.isCreated() end

---| Checks if the window has been created.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setCaption(caption) end

---| Sets the window caption.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setIcon(image) end

---| Set window icon.
---|
---> ***Available since LÖVE 0.7.0***
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.setMode(width, height, fullscreen, vsync, display, flags, depth, stencil) end

---| Changes the display mode.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.toggleFullscreen() end

---| Toggles fullscreen.
---|
---> ***Removed in LÖVE 0.9.0***
---|
---| This function is not supported in that and later versions.
---
function love.graphics.getCanvasFormats() end

---| Gets the available Canvas formats, and whether each is supported.
---|
---> ***Available since LÖVE 0.9.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.getCompressedImageFormats() end

---| Gets the available compressed image formats, and whether each is supported.
---|
---> ***Available since LÖVE 0.9.2***
---|
---> ***Removed in LÖVE 11.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getImageFormats() end

---| Gets the pixel formats usable for Images, and whether each is supported.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getMaxImageSize() end

---| Gets the max supported width or height of Images and Canvases.
---|
---> ***Available since LÖVE 0.9.0***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getMaxPointSize() end

---| Gets the max supported point size.
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getRendererInfo() end

---| Gets information about the system's video card and drivers.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getStats() end

---| Gets performance-related rendering statistics.
---|
---> ***Available since LÖVE 0.9.2***
---|
---| This function is not supported in earlier versions.
function love.graphics.getSupported(feature) end

---| Gets the optional graphics features and whether they're supported.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getSystemLimit(limit) end

---| Gets the system-dependent maximum value for a love.graphics feature.
---|
---> ***Available since LÖVE 0.9.1***
---|
---> ***Removed in LÖVE 0.10.0***
---|
---| This function is not supported in that and later versions.
function love.graphics.getSystemLimits() end

---| Gets the system-dependent maximum values for love.graphics features.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This function is not supported in earlier versions.
function love.graphics.getTextureTypes() end

---| Gets the available texture types, and whether each is supported.
---|
---> ***Available since LÖVE 11.0***
---|
---| This function is not supported in earlier versions.
---
--- @enum AlignMode
---| Text alignment.
---| "left"
---| "right"
---| "center"
---| "justify"
--- @enum ArcType
---| Different types of arcs that can be drawn.
---|
---> ***Available since LÖVE 0.10.1***
---|
---| This enum is not supported in earlier versions.
---| "pie"
---| "open"
--- @enum AttributeDataType
---| Data types used in a Mesh's vertex format.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This enum is not supported in earlier versions.
---| "float"
---| "byte"
---| "ubyte"
---| "short"
---| "ushort"
---| "int"
---| "uint"
--- @enum BlendAlphaMode
---| Different ways alpha affects color blending.
---|
---> ***Available since LÖVE 0.10.0***
---|
---| This enum is not supported in earlier versions.
---| "premultiplied"
---| "alphamultiply"
--- @enum BlendMode
---| Different ways to do color blending.
---|
---> ***Available since LÖVE 0.2.0***
---|
---| This enum is not supported in earlier versions.
---| "alpha"
---| "add"
---| "multiply"
---| "screen"
---| "subtract"
---| "invert"
---| "lighten"
---| "darken"
---| "replace"
---| "premultiplied"
--- @enum ColorMode
---| How the drawing color interacts with images.
---|
---> ***Available since LÖVE 0.9.0***
---|
---| This enum is not supported in earlier versions.
---| "modulate"
---| "multiply"
---| "add"
---| "screen"
--- @enum DepthMode
---| How to compare and write to the depth buffer.
---|
---> ***Available since LÖVE 11.0***
---|
---| This enum is not supported in earlier versions.
---| "less"
---|
