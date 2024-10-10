--- @meta

local love = {}
love.physics = {}

--#region enums
-- ************************************************************ --
-- ************************************************************ --
-- Enumerators
-- ************************************************************ --
-- ************************************************************ --

--- The types of a Body. 
--- @alias BodyType
---| "static"			#		Static bodies do not move.
---| "dynamic"			#		Dynamic bodies collide with all bodies.
---| "kinematic"			#		Kinematic bodies only collide with dynamic bodies.


--- Different types of joints.
--- @alias JointType
---| "distance"			#		A DistanceJoint.
---| "friction"			#		A FrictionJoint.
---| "gear"			#		A GearJoint.
---| "mouse"			#		A MouseJoint.
---| "prismatic"			#		A PrismaticJoint.
---| "pulley"			#		A PulleyJoint.
---| "revolute"			#		A RevoluteJoint.
---| "rope"			#		A RopeJoint.
---| "weld"			#		A WeldJoint.


--- The different types of Shapes, as returned by Shape:getType.
--- @alias ShapeType
---| "circle"			#		The Shape is a CircleShape.
---| "polygon"			#		The Shape is a PolygonShape.
---| "edge"			#		The Shape is a EdgeShape.
---| "chain"			#		The Shape is a ChainShape.


--#endregion enums
--#region types
-- ************************************************************ --
-- ************************************************************ --
-- Types / Objects
-- ************************************************************ --
-- ************************************************************ --

--- Bodies are objects with velocity and position.
--- @class Body: Object
local Body = {}

--- Applies an angular impulse to a body. This makes a single, instantaneous addition to the body momentum.
--- 
--- A body with with a larger mass will react less. The reaction does '''not''' depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.
---
--- @param impulse number The impulse in kilogram-square meter per second.
--- @return nil
function Body:applyAngularImpulse(impulse) return  end
--- Apply force to a Body.
--- 
--- A force pushes a body in a direction. A body with with a larger mass will react less. The reaction also depends on how long a force is applied: since the force acts continuously over the entire timestep, a short timestep will only push the body for a short time. Thus forces are best used for many timesteps to give a continuous push to a body (like gravity). For a single push that is independent of timestep, it is better to use Body:applyLinearImpulse.
--- 
--- If the position to apply the force is not given, it will act on the center of mass of the body. The part of the force not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia).
--- 
--- Note that the force components and position must be given in world coordinates.
---
--- @param fx number The x component of force to apply to the center of mass.
--- @param fy number The y component of force to apply to the center of mass.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function Body:applyForce(fx, fy) return  end
--- Apply force to a Body.
--- 
--- A force pushes a body in a direction. A body with with a larger mass will react less. The reaction also depends on how long a force is applied: since the force acts continuously over the entire timestep, a short timestep will only push the body for a short time. Thus forces are best used for many timesteps to give a continuous push to a body (like gravity). For a single push that is independent of timestep, it is better to use Body:applyLinearImpulse.
--- 
--- If the position to apply the force is not given, it will act on the center of mass of the body. The part of the force not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia).
--- 
--- Note that the force components and position must be given in world coordinates.
---
--- @param fx number The x component of force to apply.
--- @param fy number The y component of force to apply.
--- @param x number The x position to apply the force.
--- @param y number The y position to apply the force.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function Body:applyForce(fx, fy, x, y) return  end
--- Applies an impulse to a body.
--- 
--- This makes a single, instantaneous addition to the body momentum.
--- 
--- An impulse pushes a body in a direction. A body with with a larger mass will react less. The reaction does '''not''' depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.
--- 
--- If the position to apply the impulse is not given, it will act on the center of mass of the body. The part of the impulse not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia). 
--- 
--- Note that the impulse components and position must be given in world coordinates.
---
--- @param ix number The x component of the impulse applied to the center of mass.
--- @param iy number The y component of the impulse applied to the center of mass.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function Body:applyLinearImpulse(ix, iy) return  end
--- Applies an impulse to a body.
--- 
--- This makes a single, instantaneous addition to the body momentum.
--- 
--- An impulse pushes a body in a direction. A body with with a larger mass will react less. The reaction does '''not''' depend on the timestep, and is equivalent to applying a force continuously for 1 second. Impulses are best used to give a single push to a body. For a continuous push to a body it is better to use Body:applyForce.
--- 
--- If the position to apply the impulse is not given, it will act on the center of mass of the body. The part of the impulse not directed towards the center of mass will cause the body to spin (and depends on the rotational inertia). 
--- 
--- Note that the impulse components and position must be given in world coordinates.
---
--- @param ix number The x component of the impulse.
--- @param iy number The y component of the impulse.
--- @param x number The x position to apply the impulse.
--- @param y number The y position to apply the impulse.
--- @return nil
--- @diagnostic disable-next-line: duplicate-set-field
function Body:applyLinearImpulse(ix, iy, x, y) return  end
--- Apply torque to a body.
--- 
--- Torque is like a force that will change the angular velocity (spin) of a body. The effect will depend on the rotational inertia a body has.
---
--- @param torque number The torque to apply.
--- @return nil
function Body:applyTorque(torque) return  end
--- Explicitly destroys the Body and all fixtures and joints attached to it.
--- 
--- An error will occur if you attempt to use the object after calling this function. In 0.7.2, when you don't have time to wait for garbage collection, this function may be used to free the object immediately.
---
--- @return nil
function Body:destroy() return  end
--- Get the angle of the body.
--- 
--- The angle is measured in radians. If you need to transform it to degrees, use math.deg.
--- 
--- A value of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes ''clockwise'' from our point of view.
---
--- @return number angle The angle in radians.
function Body:getAngle() return 0 end
--- Gets the Angular damping of the Body
--- 
--- The angular damping is the ''rate of decrease of the angular velocity over time'': A spinning body with no damping and no external forces will continue spinning indefinitely. A spinning body with damping will gradually stop spinning.
--- 
--- Damping is not the same as friction - they can be modelled together. However, only damping is provided by Box2D (and LOVE).
--- 
--- Damping parameters should be between 0 and infinity, with 0 meaning no damping, and infinity meaning full damping. Normally you will use a damping value between 0 and 0.1.
---
--- @return number damping The value of the angular damping.
function Body:getAngularDamping() return 0 end
--- Get the angular velocity of the Body.
--- 
--- The angular velocity is the ''rate of change of angle over time''.
--- 
--- It is changed in World:update by applying torques, off centre forces/impulses, and angular damping. It can be set directly with Body:setAngularVelocity.
--- 
--- If you need the ''rate of change of position over time'', use Body:getLinearVelocity.
---
--- @return number w The angular velocity in radians/second.
function Body:getAngularVelocity() return 0 end
--- Gets a list of all Contacts attached to the Body.
---
--- @return table contacts A list with all contacts associated with the Body.
function Body:getContacts() return {} end
--- Returns a table with all fixtures.
---
--- @return table fixtures A sequence with all fixtures.
function Body:getFixtures() return {} end
--- Returns the gravity scale factor.
---
--- @return number scale The gravity scale factor.
function Body:getGravityScale() return 0 end
--- Gets the rotational inertia of the body.
--- 
--- The rotational inertia is how hard is it to make the body spin.
---
--- @return number inertia The rotational inertial of the body.
function Body:getInertia() return 0 end
--- Returns a table containing the Joints attached to this Body.
---
--- @return table joints A sequence with the Joints attached to the Body.
function Body:getJoints() return {} end
--- Gets the linear damping of the Body.
--- 
--- The linear damping is the ''rate of decrease of the linear velocity over time''. A moving body with no damping and no external forces will continue moving indefinitely, as is the case in space. A moving body with damping will gradually stop moving.
--- 
--- Damping is not the same as friction - they can be modelled together.
---
--- @return number damping The value of the linear damping.
function Body:getLinearDamping() return 0 end
--- Gets the linear velocity of the Body from its center of mass.
--- 
--- The linear velocity is the ''rate of change of position over time''.
--- 
--- If you need the ''rate of change of angle over time'', use Body:getAngularVelocity.
--- 
--- If you need to get the linear velocity of a point different from the center of mass:
--- 
--- *  Body:getLinearVelocityFromLocalPoint allows you to specify the point in local coordinates.
--- 
--- *  Body:getLinearVelocityFromWorldPoint allows you to specify the point in world coordinates.
--- 
--- See page 136 of 'Essential Mathematics for Games and Interactive Applications' for definitions of local and world coordinates.
---
--- @return number x The x-component of the velocity vector
--- @return number y The y-component of the velocity vector
function Body:getLinearVelocity() return 0, 0 end
--- Get the linear velocity of a point on the body.
--- 
--- The linear velocity for a point on the body is the velocity of the body center of mass plus the velocity at that point from the body spinning.
--- 
--- The point on the body must given in local coordinates. Use Body:getLinearVelocityFromWorldPoint to specify this with world coordinates.
---
--- @param x number The x position to measure velocity.
--- @param y number The y position to measure velocity.
--- @return number vx The x component of velocity at point (x,y).
--- @return number vy The y component of velocity at point (x,y).
function Body:getLinearVelocityFromLocalPoint(x, y) return 0, 0 end
--- Get the linear velocity of a point on the body.
--- 
--- The linear velocity for a point on the body is the velocity of the body center of mass plus the velocity at that point from the body spinning.
--- 
--- The point on the body must given in world coordinates. Use Body:getLinearVelocityFromLocalPoint to specify this with local coordinates.
---
--- @param x number The x position to measure velocity.
--- @param y number The y position to measure velocity.
--- @return number vx The x component of velocity at point (x,y).
--- @return number vy The y component of velocity at point (x,y).
function Body:getLinearVelocityFromWorldPoint(x, y) return 0, 0 end
--- Get the center of mass position in local coordinates.
--- 
--- Use Body:getWorldCenter to get the center of mass in world coordinates.
---
--- @return number x The x coordinate of the center of mass.
--- @return number y The y coordinate of the center of mass.
function Body:getLocalCenter() return 0, 0 end
--- Transform a point from world coordinates to local coordinates.
---
--- @param worldX number The x position in world coordinates.
--- @param worldY number The y position in world coordinates.
--- @return number localX The x position in local coordinates.
--- @return number localY The y position in local coordinates.
function Body:getLocalPoint(worldX, worldY) return 0, 0 end
--- Transforms multiple points from world coordinates to local coordinates.
---
--- @param x1 number (Argument) The x position of the first point.
--- @param y1 number (Argument) The y position of the first point.
--- @param x2 number (Argument) The x position of the second point.
--- @param y2 number (Argument) The y position of the second point.
--- @param ... number (Argument) You can continue passing x and y position of the points.
--- @return number x1 (Result) The transformed x position of the first point.
--- @return number y1 (Result) The transformed y position of the first point.
--- @return number x2 (Result) The transformed x position of the second point.
--- @return number y2 (Result) The transformed y position of the second point.
--- @return number ... (Result) Additional transformed x and y position of the points.
function Body:getLocalPoints(x1, y1, x2, y2, ...) return 0, 0, 0, 0, 0 end
--- Transform a vector from world coordinates to local coordinates.
---
--- @param worldX number The vector x component in world coordinates.
--- @param worldY number The vector y component in world coordinates.
--- @return number localX The vector x component in local coordinates.
--- @return number localY The vector y component in local coordinates.
function Body:getLocalVector(worldX, worldY) return 0, 0 end
--- Get the mass of the body.
--- 
--- Static bodies always have a mass of 0.
---
--- @return number mass The mass of the body (in kilograms).
function Body:getMass() return 0 end
--- Returns the mass, its center, and the rotational inertia.
---
--- @return number x The x position of the center of mass.
--- @return number y The y position of the center of mass.
--- @return number mass The mass of the body.
--- @return number inertia The rotational inertia.
function Body:getMassData() return 0, 0, 0, 0 end
--- Get the position of the body.
--- 
--- Note that this may not be the center of mass of the body.
---
--- @return number x The x position.
--- @return number y The y position.
function Body:getPosition() return 0, 0 end
--- Get the position and angle of the body.
--- 
--- Note that the position may not be the center of mass of the body. An angle of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes clockwise from our point of view.
---
--- @return number x The x component of the position.
--- @return number y The y component of the position.
--- @return number angle The angle in radians.
function Body:getTransform() return 0, 0, 0 end
--- Returns the type of the body.
---
--- @return BodyType type The body type.
function Body:getType() return {} end
--- Returns the Lua value associated with this Body.
---
--- @return any value The Lua value associated with the Body.
function Body:getUserData() return "Any?" end
--- Gets the World the body lives in.
---
--- @return World world The world the body lives in.
function Body:getWorld() return {} end
--- Get the center of mass position in world coordinates.
--- 
--- Use Body:getLocalCenter to get the center of mass in local coordinates.
---
--- @return number x The x coordinate of the center of mass.
--- @return number y The y coordinate of the center of mass.
function Body:getWorldCenter() return 0, 0 end
--- Transform a point from local coordinates to world coordinates.
---
--- @param localX number The x position in local coordinates.
--- @param localY number The y position in local coordinates.
--- @return number worldX The x position in world coordinates.
--- @return number worldY The y position in world coordinates.
function Body:getWorldPoint(localX, localY) return 0, 0 end
--- Transforms multiple points from local coordinates to world coordinates.
---
--- @param x1 number The x position of the first point.
--- @param y1 number The y position of the first point.
--- @param x2 number The x position of the second point.
--- @param y2 number The y position of the second point.
--- @return number x1 The transformed x position of the first point.
--- @return number y1 The transformed y position of the first point.
--- @return number x2 The transformed x position of the second point.
--- @return number y2 The transformed y position of the second point.
function Body:getWorldPoints(x1, y1, x2, y2) return 0, 0, 0, 0 end
--- Transform a vector from local coordinates to world coordinates.
---
--- @param localX number The vector x component in local coordinates.
--- @param localY number The vector y component in local coordinates.
--- @return number worldX The vector x component in world coordinates.
--- @return number worldY The vector y component in world coordinates.
function Body:getWorldVector(localX, localY) return 0, 0 end
--- Get the x position of the body in world coordinates.
---
--- @return number x The x position in world coordinates.
function Body:getX() return 0 end
--- Get the y position of the body in world coordinates.
---
--- @return number y The y position in world coordinates.
function Body:getY() return 0 end
--- Returns whether the body is actively used in the simulation.
---
--- @return boolean status True if the body is active or false if not.
function Body:isActive() return true end
--- Returns the sleep status of the body.
---
--- @return boolean status True if the body is awake or false if not.
function Body:isAwake() return true end
--- Get the bullet status of a body.
--- 
--- There are two methods to check for body collisions:
--- 
--- *  at their location when the world is updated (default)
--- 
--- *  using continuous collision detection (CCD)
--- 
--- The default method is efficient, but a body moving very quickly may sometimes jump over another body without producing a collision. A body that is set as a bullet will use CCD. This is less efficient, but is guaranteed not to jump when moving quickly.
--- 
--- Note that static bodies (with zero mass) always use CCD, so your walls will not let a fast moving body pass through even if it is not a bullet.
---
--- @return boolean status The bullet status of the body.
function Body:isBullet() return true end
--- Gets whether the Body is destroyed. Destroyed bodies cannot be used.
---
--- @return boolean destroyed Whether the Body is destroyed.
function Body:isDestroyed() return true end
--- Returns whether the body rotation is locked.
---
--- @return boolean fixed True if the body's rotation is locked or false if not.
function Body:isFixedRotation() return true end
--- Returns the sleeping behaviour of the body.
---
--- @return boolean allowed True if the body is allowed to sleep or false if not.
function Body:isSleepingAllowed() return true end
--- Gets whether the Body is touching the given other Body.
---
--- @param otherbody Body The other body to check.
--- @return boolean touching True if this body is touching the other body, false otherwise.
function Body:isTouching(otherbody) return true end
--- Resets the mass of the body by recalculating it from the mass properties of the fixtures.
---
--- @return nil
function Body:resetMassData() return  end
--- Sets whether the body is active in the world.
--- 
--- An inactive body does not take part in the simulation. It will not move or cause any collisions.
---
--- @param active boolean If the body is active or not.
--- @return nil
function Body:setActive(active) return  end
--- Set the angle of the body.
--- 
--- The angle is measured in radians. If you need to transform it from degrees, use math.rad.
--- 
--- A value of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes ''clockwise'' from our point of view.
--- 
--- It is possible to cause a collision with another body by changing its angle. 
---
--- @param angle number The angle in radians.
--- @return nil
function Body:setAngle(angle) return  end
--- Sets the angular damping of a Body
--- 
--- See Body:getAngularDamping for a definition of angular damping.
--- 
--- Angular damping can take any value from 0 to infinity. It is recommended to stay between 0 and 0.1, though. Other values will look unrealistic.
---
--- @param damping number The new angular damping.
--- @return nil
function Body:setAngularDamping(damping) return  end
--- Sets the angular velocity of a Body.
--- 
--- The angular velocity is the ''rate of change of angle over time''.
--- 
--- This function will not accumulate anything; any impulses previously applied since the last call to World:update will be lost. 
---
--- @param w number The new angular velocity, in radians per second
--- @return nil
function Body:setAngularVelocity(w) return  end
--- Wakes the body up or puts it to sleep.
---
--- @param awake boolean The body sleep status.
--- @return nil
function Body:setAwake(awake) return  end
--- Set the bullet status of a body.
--- 
--- There are two methods to check for body collisions:
--- 
--- *  at their location when the world is updated (default)
--- 
--- *  using continuous collision detection (CCD)
--- 
--- The default method is efficient, but a body moving very quickly may sometimes jump over another body without producing a collision. A body that is set as a bullet will use CCD. This is less efficient, but is guaranteed not to jump when moving quickly.
--- 
--- Note that static bodies (with zero mass) always use CCD, so your walls will not let a fast moving body pass through even if it is not a bullet.
---
--- @param status boolean The bullet status of the body.
--- @return nil
function Body:setBullet(status) return  end
--- Set whether a body has fixed rotation.
--- 
--- Bodies with fixed rotation don't vary the speed at which they rotate. Calling this function causes the mass to be reset. 
---
--- @param isFixed boolean Whether the body should have fixed rotation.
--- @return nil
function Body:setFixedRotation(isFixed) return  end
--- Sets a new gravity scale factor for the body.
---
--- @param scale number The new gravity scale factor.
--- @return nil
function Body:setGravityScale(scale) return  end
--- Set the inertia of a body.
---
--- @param inertia number The new moment of inertia, in kilograms * pixel squared.
--- @return nil
function Body:setInertia(inertia) return  end
--- Sets the linear damping of a Body
--- 
--- See Body:getLinearDamping for a definition of linear damping.
--- 
--- Linear damping can take any value from 0 to infinity. It is recommended to stay between 0 and 0.1, though. Other values will make the objects look 'floaty'(if gravity is enabled).
---
--- @param ld number The new linear damping
--- @return nil
function Body:setLinearDamping(ld) return  end
--- Sets a new linear velocity for the Body.
--- 
--- This function will not accumulate anything; any impulses previously applied since the last call to World:update will be lost.
---
--- @param x number The x-component of the velocity vector.
--- @param y number The y-component of the velocity vector.
--- @return nil
function Body:setLinearVelocity(x, y) return  end
--- Sets a new body mass.
---
--- @param mass number The mass, in kilograms.
--- @return nil
function Body:setMass(mass) return  end
--- Overrides the calculated mass data.
---
--- @param x number The x position of the center of mass.
--- @param y number The y position of the center of mass.
--- @param mass number The mass of the body.
--- @param inertia number The rotational inertia.
--- @return nil
function Body:setMassData(x, y, mass, inertia) return  end
--- Set the position of the body.
--- 
--- Note that this may not be the center of mass of the body.
--- 
--- This function cannot wake up the body.
---
--- @param x number The x position.
--- @param y number The y position.
--- @return nil
function Body:setPosition(x, y) return  end
--- Sets the sleeping behaviour of the body. Should sleeping be allowed, a body at rest will automatically sleep. A sleeping body is not simulated unless it collided with an awake body. Be wary that one can end up with a situation like a floating sleeping body if the floor was removed.
---
--- @param allowed boolean True if the body is allowed to sleep or false if not.
--- @return nil
function Body:setSleepingAllowed(allowed) return  end
--- Set the position and angle of the body.
--- 
--- Note that the position may not be the center of mass of the body. An angle of 0 radians will mean 'looking to the right'. Although radians increase counter-clockwise, the y axis points down so it becomes clockwise from our point of view.
--- 
--- This function cannot wake up the body.
---
--- @param x number The x component of the position.
--- @param y number The y component of the position.
--- @param angle number The angle in radians.
--- @return nil
function Body:setTransform(x, y, angle) return  end
--- Sets a new body type.
---
--- @param type BodyType The new type.
--- @return nil
function Body:setType(type) return  end
--- Associates a Lua value with the Body.
--- 
--- To delete the reference, explicitly pass nil.
---
--- @param value any The Lua value to associate with the Body.
--- @return nil
function Body:setUserData(value) return  end
--- Set the x position of the body.
--- 
--- This function cannot wake up the body. 
---
--- @param x number The x position.
--- @return nil
function Body:setX(x) return  end
--- Set the y position of the body.
--- 
--- This function cannot wake up the body. 
---
--- @param y number The y position.
--- @return nil
function Body:setY(y) return  end

--- A ChainShape consists of multiple line segments. It can be used to create the boundaries of your terrain. The shape does not have volume and can only collide with PolygonShape and CircleShape.
--- 
--- Unlike the PolygonShape, the ChainShape does not have a vertices limit or has to form a convex shape, but self intersections are not supported.
--- @class ChainShape: Shape, Object
local ChainShape = {}

--- Returns a child of the shape as an EdgeShape.
---
--- @param index number The index of the child.
--- @return EdgeShape shape The child as an EdgeShape.
function ChainShape:getChildEdge(index) return {} end
--- Gets the vertex that establishes a connection to the next shape.
--- 
--- Setting next and previous ChainShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @return number x The x-component of the vertex, or nil if ChainShape:setNextVertex hasn't been called.
--- @return number y The y-component of the vertex, or nil if ChainShape:setNextVertex hasn't been called.
function ChainShape:getNextVertex() return 0, 0 end
--- Returns a point of the shape.
---
--- @param index number The index of the point to return.
--- @return number x The x-coordinate of the point.
--- @return number y The y-coordinate of the point.
function ChainShape:getPoint(index) return 0, 0 end
--- Returns all points of the shape.
---
--- @return number x1 The x-coordinate of the first point.
--- @return number y1 The y-coordinate of the first point.
--- @return number x2 The x-coordinate of the second point.
--- @return number y2 The y-coordinate of the second point.
function ChainShape:getPoints() return 0, 0, 0, 0 end
--- Gets the vertex that establishes a connection to the previous shape.
--- 
--- Setting next and previous ChainShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @return number x The x-component of the vertex, or nil if ChainShape:setPreviousVertex hasn't been called.
--- @return number y The y-component of the vertex, or nil if ChainShape:setPreviousVertex hasn't been called.
function ChainShape:getPreviousVertex() return 0, 0 end
--- Returns the number of vertices the shape has.
---
--- @return number count The number of vertices.
function ChainShape:getVertexCount() return 0 end
--- Sets a vertex that establishes a connection to the next shape.
--- 
--- This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @param x number The x-component of the vertex.
--- @param y number The y-component of the vertex.
--- @return nil
function ChainShape:setNextVertex(x, y) return  end
--- Sets a vertex that establishes a connection to the previous shape.
--- 
--- This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @param x number The x-component of the vertex.
--- @param y number The y-component of the vertex.
--- @return nil
function ChainShape:setPreviousVertex(x, y) return  end

--- Circle extends Shape and adds a radius and a local position.
--- @class CircleShape: Shape, Object
local CircleShape = {}

--- Gets the center point of the circle shape.
---
--- @return number x The x-component of the center point of the circle.
--- @return number y The y-component of the center point of the circle.
function CircleShape:getPoint() return 0, 0 end
--- Gets the radius of the circle shape.
---
--- @return number radius The radius of the circle
function CircleShape:getRadius() return 0 end
--- Sets the location of the center of the circle shape.
---
--- @param x number The x-component of the new center point of the circle.
--- @param y number The y-component of the new center point of the circle.
--- @return nil
function CircleShape:setPoint(x, y) return  end
--- Sets the radius of the circle.
---
--- @param radius number The radius of the circle
--- @return nil
function CircleShape:setRadius(radius) return  end

--- Contacts are objects created to manage collisions in worlds.
--- @class Contact: Object
local Contact = {}

--- Gets the child indices of the shapes of the two colliding fixtures. For ChainShapes, an index of 1 is the first edge in the chain.
--- Used together with Fixture:rayCast or ChainShape:getChildEdge.
---
--- @return number indexA The child index of the first fixture's shape.
--- @return number indexB The child index of the second fixture's shape.
function Contact:getChildren() return 0, 0 end
--- Gets the two Fixtures that hold the shapes that are in contact.
---
--- @return Fixture fixtureA The first Fixture.
--- @return Fixture fixtureB The second Fixture.
function Contact:getFixtures() return {}, {} end
--- Get the friction between two shapes that are in contact.
---
--- @return number friction The friction of the contact.
function Contact:getFriction() return 0 end
--- Get the normal vector between two shapes that are in contact.
--- 
--- This function returns the coordinates of a unit vector that points from the first shape to the second.
---
--- @return number nx The x component of the normal vector.
--- @return number ny The y component of the normal vector.
function Contact:getNormal() return 0, 0 end
--- Returns the contact points of the two colliding fixtures. There can be one or two points.
---
--- @return number x1 The x coordinate of the first contact point.
--- @return number y1 The y coordinate of the first contact point.
--- @return number x2 The x coordinate of the second contact point.
--- @return number y2 The y coordinate of the second contact point.
function Contact:getPositions() return 0, 0, 0, 0 end
--- Get the restitution between two shapes that are in contact.
---
--- @return number restitution The restitution between the two shapes.
function Contact:getRestitution() return 0 end
--- Returns whether the contact is enabled. The collision will be ignored if a contact gets disabled in the preSolve callback.
---
--- @return boolean enabled True if enabled, false otherwise.
function Contact:isEnabled() return true end
--- Returns whether the two colliding fixtures are touching each other.
---
--- @return boolean touching True if they touch or false if not.
function Contact:isTouching() return true end
--- Resets the contact friction to the mixture value of both fixtures.
---
--- @return nil
function Contact:resetFriction() return  end
--- Resets the contact restitution to the mixture value of both fixtures.
---
--- @return nil
function Contact:resetRestitution() return  end
--- Enables or disables the contact.
---
--- @param enabled boolean True to enable or false to disable.
--- @return nil
function Contact:setEnabled(enabled) return  end
--- Sets the contact friction.
---
--- @param friction number The contact friction.
--- @return nil
function Contact:setFriction(friction) return  end
--- Sets the contact restitution.
---
--- @param restitution number The contact restitution.
--- @return nil
function Contact:setRestitution(restitution) return  end

--- Keeps two bodies at the same distance.
--- @class DistanceJoint: Joint, Object
local DistanceJoint = {}

--- Gets the damping ratio.
---
--- @return number ratio The damping ratio.
function DistanceJoint:getDampingRatio() return 0 end
--- Gets the response speed.
---
--- @return number Hz The response speed.
function DistanceJoint:getFrequency() return 0 end
--- Gets the equilibrium distance between the two Bodies.
---
--- @return number l The length between the two Bodies.
function DistanceJoint:getLength() return 0 end
--- Sets the damping ratio.
---
--- @param ratio number The damping ratio.
--- @return nil
function DistanceJoint:setDampingRatio(ratio) return  end
--- Sets the response speed.
---
--- @param Hz number The response speed.
--- @return nil
function DistanceJoint:setFrequency(Hz) return  end
--- Sets the equilibrium distance between the two Bodies.
---
--- @param l number The length between the two Bodies.
--- @return nil
function DistanceJoint:setLength(l) return  end

--- A EdgeShape is a line segment. They can be used to create the boundaries of your terrain. The shape does not have volume and can only collide with PolygonShape and CircleShape.
--- @class EdgeShape: Shape, Object
local EdgeShape = {}

--- Gets the vertex that establishes a connection to the next shape.
--- 
--- Setting next and previous EdgeShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @return number x The x-component of the vertex, or nil if EdgeShape:setNextVertex hasn't been called.
--- @return number y The y-component of the vertex, or nil if EdgeShape:setNextVertex hasn't been called.
function EdgeShape:getNextVertex() return 0, 0 end
--- Returns the local coordinates of the edge points.
---
--- @return number x1 The x-component of the first vertex.
--- @return number y1 The y-component of the first vertex.
--- @return number x2 The x-component of the second vertex.
--- @return number y2 The y-component of the second vertex.
function EdgeShape:getPoints() return 0, 0, 0, 0 end
--- Gets the vertex that establishes a connection to the previous shape.
--- 
--- Setting next and previous EdgeShape vertices can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @return number x The x-component of the vertex, or nil if EdgeShape:setPreviousVertex hasn't been called.
--- @return number y The y-component of the vertex, or nil if EdgeShape:setPreviousVertex hasn't been called.
function EdgeShape:getPreviousVertex() return 0, 0 end
--- Sets a vertex that establishes a connection to the next shape.
--- 
--- This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @param x number The x-component of the vertex.
--- @param y number The y-component of the vertex.
--- @return nil
function EdgeShape:setNextVertex(x, y) return  end
--- Sets a vertex that establishes a connection to the previous shape.
--- 
--- This can help prevent unwanted collisions when a flat shape slides along the edge and moves over to the new shape.
---
--- @param x number The x-component of the vertex.
--- @param y number The y-component of the vertex.
--- @return nil
function EdgeShape:setPreviousVertex(x, y) return  end

--- Fixtures attach shapes to bodies.
--- @class Fixture: Object
local Fixture = {}

--- Destroys the fixture.
---
--- @return nil
function Fixture:destroy() return  end
--- Returns the body to which the fixture is attached.
---
--- @return Body body The parent body.
function Fixture:getBody() return {} end
--- Returns the points of the fixture bounding box. In case the fixture has multiple children a 1-based index can be specified. For example, a fixture will have multiple children with a chain shape.
---
--- @param index number A bounding box of the fixture.
--- @return number topLeftX The x position of the top-left point.
--- @return number topLeftY The y position of the top-left point.
--- @return number bottomRightX The x position of the bottom-right point.
--- @return number bottomRightY The y position of the bottom-right point.
function Fixture:getBoundingBox(index) return 0, 0, 0, 0 end
--- Returns the categories the fixture belongs to.
---
--- @return number ... The categories.
function Fixture:getCategory() return 0 end
--- Returns the density of the fixture.
---
--- @return number density The fixture density in kilograms per square meter.
function Fixture:getDensity() return 0 end
--- Returns the filter data of the fixture.
--- 
--- Categories and masks are encoded as the bits of a 16-bit integer.
---
--- @return number categories The categories as an integer from 0 to 65535.
--- @return number mask The mask as an integer from 0 to 65535.
--- @return number group The group as an integer from -32768 to 32767.
function Fixture:getFilterData() return 0, 0, 0 end
--- Returns the friction of the fixture.
---
--- @return number friction The fixture friction.
function Fixture:getFriction() return 0 end
--- Returns the group the fixture belongs to. Fixtures with the same group will always collide if the group is positive or never collide if it's negative. The group zero means no group.
--- 
--- The groups range from -32768 to 32767.
---
--- @return number group The group of the fixture.
function Fixture:getGroupIndex() return 0 end
--- Returns which categories this fixture should '''NOT''' collide with.
---
--- @return number ... The masks.
function Fixture:getMask() return 0 end
--- Returns the mass, its center and the rotational inertia.
---
--- @return number x The x position of the center of mass.
--- @return number y The y position of the center of mass.
--- @return number mass The mass of the fixture.
--- @return number inertia The rotational inertia.
function Fixture:getMassData() return 0, 0, 0, 0 end
--- Returns the restitution of the fixture.
---
--- @return number restitution The fixture restitution.
function Fixture:getRestitution() return 0 end
--- Returns the shape of the fixture. This shape is a reference to the actual data used in the simulation. It's possible to change its values between timesteps.
---
--- @return Shape shape The fixture's shape.
function Fixture:getShape() return {} end
--- Returns the Lua value associated with this fixture.
---
--- @return any value The Lua value associated with the fixture.
function Fixture:getUserData() return "Any?" end
--- Gets whether the Fixture is destroyed. Destroyed fixtures cannot be used.
---
--- @return boolean destroyed Whether the Fixture is destroyed.
function Fixture:isDestroyed() return true end
--- Returns whether the fixture is a sensor.
---
--- @return boolean sensor If the fixture is a sensor.
function Fixture:isSensor() return true end
--- Casts a ray against the shape of the fixture and returns the surface normal vector and the line position where the ray hit. If the ray missed the shape, nil will be returned.
--- 
--- The ray starts on the first point of the input line and goes towards the second point of the line. The fifth argument is the maximum distance the ray is going to travel as a scale factor of the input line length.
--- 
--- The childIndex parameter is used to specify which child of a parent shape, such as a ChainShape, will be ray casted. For ChainShapes, the index of 1 is the first edge on the chain. Ray casting a parent shape will only test the child specified so if you want to test every shape of the parent, you must loop through all of its children.
--- 
--- The world position of the impact can be calculated by multiplying the line vector with the third return value and adding it to the line starting point.
--- 
--- hitx, hity = x1 + (x2 - x1) * fraction, y1 + (y2 - y1) * fraction
---
--- @param x1 number The x position of the input line starting point.
--- @param y1 number The y position of the input line starting point.
--- @param x2 number The x position of the input line end point.
--- @param y2 number The y position of the input line end point.
--- @param maxFraction number Ray length parameter.
--- @param childIndex number The index of the child the ray gets cast against.
--- @return number xn The x component of the normal vector of the edge where the ray hit the shape.
--- @return number yn The y component of the normal vector of the edge where the ray hit the shape.
--- @return number fraction The position on the input line where the intersection happened as a factor of the line length.
function Fixture:rayCast(x1, y1, x2, y2, maxFraction, childIndex) return 0, 0, 0 end
--- Sets the categories the fixture belongs to. There can be up to 16 categories represented as a number from 1 to 16.
--- 
--- All fixture's default category is 1.
---
--- @param ... number The categories.
--- @return nil
function Fixture:setCategory(, ...) return  end
--- Sets the density of the fixture. Call Body:resetMassData if this needs to take effect immediately.
---
--- @param density number The fixture density in kilograms per square meter.
--- @return nil
function Fixture:setDensity(density) return  end
--- Sets the filter data of the fixture.
--- 
--- Groups, categories, and mask can be used to define the collision behaviour of the fixture.
--- 
--- If two fixtures are in the same group they either always collide if the group is positive, or never collide if it's negative. If the group is zero or they do not match, then the contact filter checks if the fixtures select a category of the other fixture with their masks. The fixtures do not collide if that's not the case. If they do have each other's categories selected, the return value of the custom contact filter will be used. They always collide if none was set.
--- 
--- There can be up to 16 categories. Categories and masks are encoded as the bits of a 16-bit integer.
--- 
--- When created, prior to calling this function, all fixtures have category set to 1, mask set to 65535 (all categories) and group set to 0.
--- 
--- This function allows setting all filter data for a fixture at once. To set only the categories, the mask or the group, you can use Fixture:setCategory, Fixture:setMask or Fixture:setGroupIndex respectively.
---
--- @param categories number The categories as an integer from 0 to 65535.
--- @param mask number The mask as an integer from 0 to 65535.
--- @param group number The group as an integer from -32768 to 32767.
--- @return nil
function Fixture:setFilterData(categories, mask, group) return  end
--- Sets the friction of the fixture.
--- 
--- Friction determines how shapes react when they 'slide' along other shapes. Low friction indicates a slippery surface, like ice, while high friction indicates a rough surface, like concrete. Range: 0.0 - 1.0.
---
--- @param friction number The fixture friction.
--- @return nil
function Fixture:setFriction(friction) return  end
--- Sets the group the fixture belongs to. Fixtures with the same group will always collide if the group is positive or never collide if it's negative. The group zero means no group.
--- 
--- The groups range from -32768 to 32767.
---
--- @param group number The group as an integer from -32768 to 32767.
--- @return nil
function Fixture:setGroupIndex(group) return  end
--- Sets the category mask of the fixture. There can be up to 16 categories represented as a number from 1 to 16.
--- 
--- This fixture will '''NOT''' collide with the fixtures that are in the selected categories if the other fixture also has a category of this fixture selected.
---
--- @param ... number The masks.
--- @return nil
function Fixture:setMask(, ...) return  end
--- Sets the restitution of the fixture.
---
--- @param restitution number The fixture restitution.
--- @return nil
function Fixture:setRestitution(restitution) return  end
--- Sets whether the fixture should act as a sensor.
--- 
--- Sensors do not cause collision responses, but the begin-contact and end-contact World callbacks will still be called for this fixture.
---
--- @param sensor boolean The sensor status.
--- @return nil
function Fixture:setSensor(sensor) return  end
--- Associates a Lua value with the fixture.
--- 
--- To delete the reference, explicitly pass nil.
---
--- @param value any The Lua value to associate with the fixture.
--- @return nil
function Fixture:setUserData(value) return  end
--- Checks if a point is inside the shape of the fixture.
---
--- @param x number The x position of the point.
--- @param y number The y position of the point.
--- @return boolean isInside True if the point is inside or false if it is outside.
function Fixture:testPoint(x, y) return true end

--- A FrictionJoint applies friction to a body.
--- @class FrictionJoint: Joint, Object
local FrictionJoint = {}

--- Gets the maximum friction force in Newtons.
---
--- @return number force Maximum force in Newtons.
function FrictionJoint:getMaxForce() return 0 end
--- Gets the maximum friction torque in Newton-meters.
---
--- @return number torque Maximum torque in Newton-meters.
function FrictionJoint:getMaxTorque() return 0 end
--- Sets the maximum friction force in Newtons.
---
--- @param maxForce number Max force in Newtons.
--- @return nil
function FrictionJoint:setMaxForce(maxForce) return  end
--- Sets the maximum friction torque in Newton-meters.
---
--- @param torque number Maximum torque in Newton-meters.
--- @return nil
function FrictionJoint:setMaxTorque(torque) return  end

--- Keeps bodies together in such a way that they act like gears.
--- @class GearJoint: Joint, Object
local GearJoint = {}

--- Get the Joints connected by this GearJoint.
---
--- @return Joint joint1 The first connected Joint.
--- @return Joint joint2 The second connected Joint.
function GearJoint:getJoints() return {}, {} end
--- Get the ratio of a gear joint.
---
--- @return number ratio The ratio of the joint.
function GearJoint:getRatio() return 0 end
--- Set the ratio of a gear joint.
---
--- @param ratio number The new ratio of the joint.
--- @return nil
function GearJoint:setRatio(ratio) return  end

--- Attach multiple bodies together to interact in unique ways.
--- @class Joint: Object
local Joint = {}

--- Explicitly destroys the Joint. An error will occur if you attempt to use the object after calling this function.
--- 
--- In 0.7.2, when you don't have time to wait for garbage collection, this function 
--- 
--- may be used to free the object immediately.
---
--- @return nil
function Joint:destroy() return  end
--- Get the anchor points of the joint.
---
--- @return number x1 The x-component of the anchor on Body 1.
--- @return number y1 The y-component of the anchor on Body 1.
--- @return number x2 The x-component of the anchor on Body 2.
--- @return number y2 The y-component of the anchor on Body 2.
function Joint:getAnchors() return 0, 0, 0, 0 end
--- Gets the bodies that the Joint is attached to.
---
--- @return Body bodyA The first Body.
--- @return Body bodyB The second Body.
function Joint:getBodies() return {}, {} end
--- Gets whether the connected Bodies collide.
---
--- @return boolean c True if they collide, false otherwise.
function Joint:getCollideConnected() return true end
--- Returns the reaction force in newtons on the second body
---
--- @param x number How long the force applies. Usually the inverse time step or 1/dt.
--- @return number x The x-component of the force.
--- @return number y The y-component of the force.
function Joint:getReactionForce(x) return 0, 0 end
--- Returns the reaction torque on the second body.
---
--- @param invdt number How long the force applies. Usually the inverse time step or 1/dt.
--- @return number torque The reaction torque on the second body.
function Joint:getReactionTorque(invdt) return 0 end
--- Gets a string representing the type.
---
--- @return JointType type A string with the name of the Joint type.
function Joint:getType() return {} end
--- Returns the Lua value associated with this Joint.
---
--- @return any value The Lua value associated with the Joint.
function Joint:getUserData() return "Any?" end
--- Gets whether the Joint is destroyed. Destroyed joints cannot be used.
---
--- @return boolean destroyed Whether the Joint is destroyed.
function Joint:isDestroyed() return true end
--- Associates a Lua value with the Joint.
--- 
--- To delete the reference, explicitly pass nil.
---
--- @param value any The Lua value to associate with the Joint.
--- @return nil
function Joint:setUserData(value) return  end

--- Controls the relative motion between two Bodies. Position and rotation offsets can be specified, as well as the maximum motor force and torque that will be applied to reach the target offsets.
--- @class MotorJoint: Joint, Object
local MotorJoint = {}

--- Gets the target angular offset between the two Bodies the Joint is attached to.
---
--- @return number angleoffset The target angular offset in radians: the second body's angle minus the first body's angle.
function MotorJoint:getAngularOffset() return 0 end
--- Gets the target linear offset between the two Bodies the Joint is attached to.
---
--- @return number x The x component of the target linear offset, relative to the first Body.
--- @return number y The y component of the target linear offset, relative to the first Body.
function MotorJoint:getLinearOffset() return 0, 0 end
--- Sets the target angluar offset between the two Bodies the Joint is attached to.
---
--- @param angleoffset number The target angular offset in radians: the second body's angle minus the first body's angle.
--- @return nil
function MotorJoint:setAngularOffset(angleoffset) return  end
--- Sets the target linear offset between the two Bodies the Joint is attached to.
---
--- @param x number The x component of the target linear offset, relative to the first Body.
--- @param y number The y component of the target linear offset, relative to the first Body.
--- @return nil
function MotorJoint:setLinearOffset(x, y) return  end

--- For controlling objects with the mouse.
--- @class MouseJoint: Joint, Object
local MouseJoint = {}

--- Returns the damping ratio.
---
--- @return number ratio The new damping ratio.
function MouseJoint:getDampingRatio() return 0 end
--- Returns the frequency.
---
--- @return number freq The frequency in hertz.
function MouseJoint:getFrequency() return 0 end
--- Gets the highest allowed force.
---
--- @return number f The max allowed force.
function MouseJoint:getMaxForce() return 0 end
--- Gets the target point.
---
--- @return number x The x-component of the target.
--- @return number y The x-component of the target.
function MouseJoint:getTarget() return 0, 0 end
--- Sets a new damping ratio.
---
--- @param ratio number The new damping ratio.
--- @return nil
function MouseJoint:setDampingRatio(ratio) return  end
--- Sets a new frequency.
---
--- @param freq number The new frequency in hertz.
--- @return nil
function MouseJoint:setFrequency(freq) return  end
--- Sets the highest allowed force.
---
--- @param f number The max allowed force.
--- @return nil
function MouseJoint:setMaxForce(f) return  end
--- Sets the target point.
---
--- @param x number The x-component of the target.
--- @param y number The y-component of the target.
--- @return nil
function MouseJoint:setTarget(x, y) return  end

--- A PolygonShape is a convex polygon with up to 8 vertices.
--- @class PolygonShape: Shape, Object
local PolygonShape = {}

--- Get the local coordinates of the polygon's vertices.
--- 
--- This function has a variable number of return values. It can be used in a nested fashion with love.graphics.polygon.
---
--- @return number x1 The x-component of the first vertex.
--- @return number y1 The y-component of the first vertex.
--- @return number x2 The x-component of the second vertex.
--- @return number y2 The y-component of the second vertex.
function PolygonShape:getPoints() return 0, 0, 0, 0 end

--- Restricts relative motion between Bodies to one shared axis.
--- @class PrismaticJoint: Joint, Object
local PrismaticJoint = {}

--- Checks whether the limits are enabled.
---
--- @return boolean enabled True if enabled, false otherwise.
function PrismaticJoint:areLimitsEnabled() return true end
--- Gets the world-space axis vector of the Prismatic Joint.
---
--- @return number x The x-axis coordinate of the world-space axis vector.
--- @return number y The y-axis coordinate of the world-space axis vector.
function PrismaticJoint:getAxis() return 0, 0 end
--- Get the current joint angle speed.
---
--- @return number s Joint angle speed in meters/second.
function PrismaticJoint:getJointSpeed() return 0 end
--- Get the current joint translation.
---
--- @return number t Joint translation, usually in meters..
function PrismaticJoint:getJointTranslation() return 0 end
--- Gets the joint limits.
---
--- @return number lower The lower limit, usually in meters.
--- @return number upper The upper limit, usually in meters.
function PrismaticJoint:getLimits() return 0, 0 end
--- Gets the lower limit.
---
--- @return number lower The lower limit, usually in meters.
function PrismaticJoint:getLowerLimit() return 0 end
--- Gets the maximum motor force.
---
--- @return number f The maximum motor force, usually in N.
function PrismaticJoint:getMaxMotorForce() return 0 end
--- Returns the current motor force.
---
--- @param invdt number How long the force applies. Usually the inverse time step or 1/dt.
--- @return number force The force on the motor in newtons.
function PrismaticJoint:getMotorForce(invdt) return 0 end
--- Gets the motor speed.
---
--- @return number s The motor speed, usually in meters per second.
function PrismaticJoint:getMotorSpeed() return 0 end
--- Gets the reference angle.
---
--- @return number angle The reference angle in radians.
function PrismaticJoint:getReferenceAngle() return 0 end
--- Gets the upper limit.
---
--- @return number upper The upper limit, usually in meters.
function PrismaticJoint:getUpperLimit() return 0 end
--- Checks whether the motor is enabled.
---
--- @return boolean enabled True if enabled, false if disabled.
function PrismaticJoint:isMotorEnabled() return true end
--- Sets the limits.
---
--- @param lower number The lower limit, usually in meters.
--- @param upper number The upper limit, usually in meters.
--- @return nil
function PrismaticJoint:setLimits(lower, upper) return  end
--- Enables/disables the joint limit.
---
--- @return boolean enable True if enabled, false if disabled.
function PrismaticJoint:setLimitsEnabled() return true end
--- Sets the lower limit.
---
--- @param lower number The lower limit, usually in meters.
--- @return nil
function PrismaticJoint:setLowerLimit(lower) return  end
--- Set the maximum motor force.
---
--- @param f number The maximum motor force, usually in N.
--- @return nil
function PrismaticJoint:setMaxMotorForce(f) return  end
--- Enables/disables the joint motor.
---
--- @param enable boolean True to enable, false to disable.
--- @return nil
function PrismaticJoint:setMotorEnabled(enable) return  end
--- Sets the motor speed.
---
--- @param s number The motor speed, usually in meters per second.
--- @return nil
function PrismaticJoint:setMotorSpeed(s) return  end
--- Sets the upper limit.
---
--- @param upper number The upper limit, usually in meters.
--- @return nil
function PrismaticJoint:setUpperLimit(upper) return  end

--- Allows you to simulate bodies connected through pulleys.
--- @class PulleyJoint: Joint, Object
local PulleyJoint = {}

--- Get the total length of the rope.
---
--- @return number length The length of the rope in the joint.
function PulleyJoint:getConstant() return 0 end
--- Get the ground anchor positions in world coordinates.
---
--- @return number a1x The x coordinate of the first anchor.
--- @return number a1y The y coordinate of the first anchor.
--- @return number a2x The x coordinate of the second anchor.
--- @return number a2y The y coordinate of the second anchor.
function PulleyJoint:getGroundAnchors() return 0, 0, 0, 0 end
--- Get the current length of the rope segment attached to the first body.
---
--- @return number length The length of the rope segment.
function PulleyJoint:getLengthA() return 0 end
--- Get the current length of the rope segment attached to the second body.
---
--- @return number length The length of the rope segment.
function PulleyJoint:getLengthB() return 0 end
--- Get the maximum lengths of the rope segments.
---
--- @return number len1 The maximum length of the first rope segment.
--- @return number len2 The maximum length of the second rope segment.
function PulleyJoint:getMaxLengths() return 0, 0 end
--- Get the pulley ratio.
---
--- @return number ratio The pulley ratio of the joint.
function PulleyJoint:getRatio() return 0 end
--- Set the total length of the rope.
--- 
--- Setting a new length for the rope updates the maximum length values of the joint.
---
--- @param length number The new length of the rope in the joint.
--- @return nil
function PulleyJoint:setConstant(length) return  end
--- Set the maximum lengths of the rope segments.
--- 
--- The physics module also imposes maximum values for the rope segments. If the parameters exceed these values, the maximum values are set instead of the requested values.
---
--- @param max1 number The new maximum length of the first segment.
--- @param max2 number The new maximum length of the second segment.
--- @return nil
function PulleyJoint:setMaxLengths(max1, max2) return  end
--- Set the pulley ratio.
---
--- @param ratio number The new pulley ratio of the joint.
--- @return nil
function PulleyJoint:setRatio(ratio) return  end

--- Allow two Bodies to revolve around a shared point.
--- @class RevoluteJoint: Joint, Object
local RevoluteJoint = {}

--- Checks whether limits are enabled.
---
--- @return boolean enabled True if enabled, false otherwise.
function RevoluteJoint:areLimitsEnabled() return true end
--- Get the current joint angle.
---
--- @return number angle The joint angle in radians.
function RevoluteJoint:getJointAngle() return 0 end
--- Get the current joint angle speed.
---
--- @return number s Joint angle speed in radians/second.
function RevoluteJoint:getJointSpeed() return 0 end
--- Gets the joint limits.
---
--- @return number lower The lower limit, in radians.
--- @return number upper The upper limit, in radians.
function RevoluteJoint:getLimits() return 0, 0 end
--- Gets the lower limit.
---
--- @return number lower The lower limit, in radians.
function RevoluteJoint:getLowerLimit() return 0 end
--- Gets the maximum motor force.
---
--- @return number f The maximum motor force, in Nm.
function RevoluteJoint:getMaxMotorTorque() return 0 end
--- Gets the motor speed.
---
--- @return number s The motor speed, radians per second.
function RevoluteJoint:getMotorSpeed() return 0 end
--- Get the current motor force.
---
--- @return number f The current motor force, in Nm.
function RevoluteJoint:getMotorTorque() return 0 end
--- Gets the reference angle.
---
--- @return number angle The reference angle in radians.
function RevoluteJoint:getReferenceAngle() return 0 end
--- Gets the upper limit.
---
--- @return number upper The upper limit, in radians.
function RevoluteJoint:getUpperLimit() return 0 end
--- Checks whether limits are enabled.
---
--- @return boolean enabled True if enabled, false otherwise.
function RevoluteJoint:hasLimitsEnabled() return true end
--- Checks whether the motor is enabled.
---
--- @return boolean enabled True if enabled, false if disabled.
function RevoluteJoint:isMotorEnabled() return true end
--- Sets the limits.
---
--- @param lower number The lower limit, in radians.
--- @param upper number The upper limit, in radians.
--- @return nil
function RevoluteJoint:setLimits(lower, upper) return  end
--- Enables/disables the joint limit.
---
--- @param enable boolean True to enable, false to disable.
--- @return nil
function RevoluteJoint:setLimitsEnabled(enable) return  end
--- Sets the lower limit.
---
--- @param lower number The lower limit, in radians.
--- @return nil
function RevoluteJoint:setLowerLimit(lower) return  end
--- Set the maximum motor force.
---
--- @param f number The maximum motor force, in Nm.
--- @return nil
function RevoluteJoint:setMaxMotorTorque(f) return  end
--- Enables/disables the joint motor.
---
--- @param enable boolean True to enable, false to disable.
--- @return nil
function RevoluteJoint:setMotorEnabled(enable) return  end
--- Sets the motor speed.
---
--- @param s number The motor speed, radians per second.
--- @return nil
function RevoluteJoint:setMotorSpeed(s) return  end
--- Sets the upper limit.
---
--- @param upper number The upper limit, in radians.
--- @return nil
function RevoluteJoint:setUpperLimit(upper) return  end

--- The RopeJoint enforces a maximum distance between two points on two bodies. It has no other effect.
--- @class RopeJoint: Joint, Object
local RopeJoint = {}

--- Gets the maximum length of a RopeJoint.
---
--- @return number maxLength The maximum length of the RopeJoint.
function RopeJoint:getMaxLength() return 0 end
--- Sets the maximum length of a RopeJoint.
---
--- @param maxLength number The new maximum length of the RopeJoint.
--- @return nil
function RopeJoint:setMaxLength(maxLength) return  end

--- Shapes are solid 2d geometrical objects which handle the mass and collision of a Body in love.physics.
--- 
--- Shapes are attached to a Body via a Fixture. The Shape object is copied when this happens. 
--- 
--- The Shape's position is relative to the position of the Body it has been attached to.
--- @class Shape: Object
local Shape = {}

--- Returns the points of the bounding box for the transformed shape.
---
--- @param tx number The translation of the shape on the x-axis.
--- @param ty number The translation of the shape on the y-axis.
--- @param tr number The shape rotation.
--- @param childIndex number The index of the child to compute the bounding box of.
--- @return number topLeftX The x position of the top-left point.
--- @return number topLeftY The y position of the top-left point.
--- @return number bottomRightX The x position of the bottom-right point.
--- @return number bottomRightY The y position of the bottom-right point.
function Shape:computeAABB(tx, ty, tr, childIndex) return 0, 0, 0, 0 end
--- Computes the mass properties for the shape with the specified density.
---
--- @param density number The shape density.
--- @return number x The x postition of the center of mass.
--- @return number y The y postition of the center of mass.
--- @return number mass The mass of the shape.
--- @return number inertia The rotational inertia.
function Shape:computeMass(density) return 0, 0, 0, 0 end
--- Returns the number of children the shape has.
---
--- @return number count The number of children.
function Shape:getChildCount() return 0 end
--- Gets the radius of the shape.
---
--- @return number radius The radius of the shape.
function Shape:getRadius() return 0 end
--- Gets a string representing the Shape.
--- 
--- This function can be useful for conditional debug drawing.
---
--- @return ShapeType type The type of the Shape.
function Shape:getType() return {} end
--- Casts a ray against the shape and returns the surface normal vector and the line position where the ray hit. If the ray missed the shape, nil will be returned. The Shape can be transformed to get it into the desired position.
--- 
--- The ray starts on the first point of the input line and goes towards the second point of the line. The fourth argument is the maximum distance the ray is going to travel as a scale factor of the input line length.
--- 
--- The childIndex parameter is used to specify which child of a parent shape, such as a ChainShape, will be ray casted. For ChainShapes, the index of 1 is the first edge on the chain. Ray casting a parent shape will only test the child specified so if you want to test every shape of the parent, you must loop through all of its children.
--- 
--- The world position of the impact can be calculated by multiplying the line vector with the third return value and adding it to the line starting point.
--- 
--- hitx, hity = x1 + (x2 - x1) * fraction, y1 + (y2 - y1) * fraction
---
--- @param x1 number The x position of the input line starting point.
--- @param y1 number The y position of the input line starting point.
--- @param x2 number The x position of the input line end point.
--- @param y2 number The y position of the input line end point.
--- @param maxFraction number Ray length parameter.
--- @param tx number The translation of the shape on the x-axis.
--- @param ty number The translation of the shape on the y-axis.
--- @param tr number The shape rotation.
--- @param childIndex number The index of the child the ray gets cast against.
--- @return number xn The x component of the normal vector of the edge where the ray hit the shape.
--- @return number yn The y component of the normal vector of the edge where the ray hit the shape.
--- @return number fraction The position on the input line where the intersection happened as a factor of the line length.
function Shape:rayCast(x1, y1, x2, y2, maxFraction, tx, ty, tr, childIndex) return 0, 0, 0 end
--- This is particularly useful for mouse interaction with the shapes. By looping through all shapes and testing the mouse position with this function, we can find which shapes the mouse touches.
---
--- @param tx number Translates the shape along the x-axis.
--- @param ty number Translates the shape along the y-axis.
--- @param tr number Rotates the shape.
--- @param x number The x-component of the point.
--- @param y number The y-component of the point.
--- @return boolean hit True if inside, false if outside
function Shape:testPoint(tx, ty, tr, x, y) return true end

--- A WeldJoint essentially glues two bodies together.
--- @class WeldJoint: Joint, Object
local WeldJoint = {}

--- Returns the damping ratio of the joint.
---
--- @return number ratio The damping ratio.
function WeldJoint:getDampingRatio() return 0 end
--- Returns the frequency.
---
--- @return number freq The frequency in hertz.
function WeldJoint:getFrequency() return 0 end
--- Gets the reference angle.
---
--- @return number angle The reference angle in radians.
function WeldJoint:getReferenceAngle() return 0 end
--- Sets a new damping ratio.
---
--- @param ratio number The new damping ratio.
--- @return nil
function WeldJoint:setDampingRatio(ratio) return  end
--- Sets a new frequency.
---
--- @param freq number The new frequency in hertz.
--- @return nil
function WeldJoint:setFrequency(freq) return  end

--- Restricts a point on the second body to a line on the first body.
--- @class WheelJoint: Joint, Object
local WheelJoint = {}

--- Gets the world-space axis vector of the Wheel Joint.
---
--- @return number x The x-axis coordinate of the world-space axis vector.
--- @return number y The y-axis coordinate of the world-space axis vector.
function WheelJoint:getAxis() return 0, 0 end
--- Returns the current joint translation speed.
---
--- @return number speed The translation speed of the joint in meters per second.
function WheelJoint:getJointSpeed() return 0 end
--- Returns the current joint translation.
---
--- @return number position The translation of the joint in meters.
function WheelJoint:getJointTranslation() return 0 end
--- Returns the maximum motor torque.
---
--- @return number maxTorque The maximum torque of the joint motor in newton meters.
function WheelJoint:getMaxMotorTorque() return 0 end
--- Returns the speed of the motor.
---
--- @return number speed The speed of the joint motor in radians per second.
function WheelJoint:getMotorSpeed() return 0 end
--- Returns the current torque on the motor.
---
--- @param invdt number How long the force applies. Usually the inverse time step or 1/dt.
--- @return number torque The torque on the motor in newton meters.
function WheelJoint:getMotorTorque(invdt) return 0 end
--- Returns the damping ratio.
---
--- @return number ratio The damping ratio.
function WheelJoint:getSpringDampingRatio() return 0 end
--- Returns the spring frequency.
---
--- @return number freq The frequency in hertz.
function WheelJoint:getSpringFrequency() return 0 end
--- Checks if the joint motor is running.
---
--- @return boolean on The status of the joint motor.
function WheelJoint:isMotorEnabled() return true end
--- Sets a new maximum motor torque.
---
--- @param maxTorque number The new maximum torque for the joint motor in newton meters.
--- @return nil
function WheelJoint:setMaxMotorTorque(maxTorque) return  end
--- Starts and stops the joint motor.
---
--- @param enable boolean True turns the motor on and false turns it off.
--- @return nil
function WheelJoint:setMotorEnabled(enable) return  end
--- Sets a new speed for the motor.
---
--- @param speed number The new speed for the joint motor in radians per second.
--- @return nil
function WheelJoint:setMotorSpeed(speed) return  end
--- Sets a new damping ratio.
---
--- @param ratio number The new damping ratio.
--- @return nil
function WheelJoint:setSpringDampingRatio(ratio) return  end
--- Sets a new spring frequency.
---
--- @param freq number The new frequency in hertz.
--- @return nil
function WheelJoint:setSpringFrequency(freq) return  end

--- A world is an object that contains all bodies and joints.
--- @class World: Object
local World = {}

--- Destroys the world, taking all bodies, joints, fixtures and their shapes with it. 
--- 
--- An error will occur if you attempt to use any of the destroyed objects after calling this function.
---
--- @return nil
function World:destroy() return  end
--- Returns a table with all bodies.
---
--- @return table bodies A sequence with all bodies.
function World:getBodies() return {} end
--- Returns the number of bodies in the world.
---
--- @return number n The number of bodies in the world.
function World:getBodyCount() return 0 end
--- Returns functions for the callbacks during the world update.
---
--- @return function beginContact Gets called when two fixtures begin to overlap.
--- @return function endContact Gets called when two fixtures cease to overlap.
--- @return function preSolve Gets called before a collision gets resolved.
--- @return function postSolve Gets called after the collision has been resolved.
function World:getCallbacks() return function() end, function() end, function() end, function() end end
--- Returns the number of contacts in the world.
---
--- @return number n The number of contacts in the world.
function World:getContactCount() return 0 end
--- Returns the function for collision filtering.
---
--- @return function contactFilter The function that handles the contact filtering.
function World:getContactFilter() return function() end end
--- Returns a table with all Contacts.
---
--- @return table contacts A sequence with all Contacts.
function World:getContacts() return {} end
--- Get the gravity of the world.
---
--- @return number x The x component of gravity.
--- @return number y The y component of gravity.
function World:getGravity() return 0, 0 end
--- Returns the number of joints in the world.
---
--- @return number n The number of joints in the world.
function World:getJointCount() return 0 end
--- Returns a table with all joints.
---
--- @return table joints A sequence with all joints.
function World:getJoints() return {} end
--- Gets whether the World is destroyed. Destroyed worlds cannot be used.
---
--- @return boolean destroyed Whether the World is destroyed.
function World:isDestroyed() return true end
--- Returns if the world is updating its state.
--- 
--- This will return true inside the callbacks from World:setCallbacks.
---
--- @return boolean locked Will be true if the world is in the process of updating its state.
function World:isLocked() return true end
--- Gets the sleep behaviour of the world.
---
--- @return boolean allow True if bodies in the world are allowed to sleep, or false if not.
function World:isSleepingAllowed() return true end
--- Calls a function for each fixture inside the specified area by searching for any overlapping bounding box (Fixture:getBoundingBox).
---
--- @param topLeftX number The x position of the top-left point.
--- @param topLeftY number The y position of the top-left point.
--- @param bottomRightX number The x position of the bottom-right point.
--- @param bottomRightY number The y position of the bottom-right point.
--- @param callback function This function gets passed one argument, the fixture, and should return a boolean. The search will continue if it is true or stop if it is false.
--- @return nil
function World:queryBoundingBox(topLeftX, topLeftY, bottomRightX, bottomRightY, callback) return  end
--- Casts a ray and calls a function for each fixtures it intersects. 
---
--- @param x1 number The x position of the starting point of the ray.
--- @param y1 number The x position of the starting point of the ray.
--- @param x2 number The x position of the end point of the ray.
--- @param y2 number The x value of the surface normal vector of the shape edge.
--- @param callback function A function called for each fixture intersected by the ray. The function gets six arguments and should return a number as a control value. The intersection points fed into the function will be in an arbitrary order. If you wish to find the closest point of intersection, you'll need to do that yourself within the function. The easiest way to do that is by using the fraction value.
--- @return nil
function World:rayCast(x1, y1, x2, y2, callback) return  end
--- Sets functions for the collision callbacks during the world update.
--- 
--- Four Lua functions can be given as arguments. The value nil removes a function.
--- 
--- When called, each function will be passed three arguments. The first two arguments are the colliding fixtures and the third argument is the Contact between them. The postSolve callback additionally gets the normal and tangent impulse for each contact point. See notes.
--- 
--- If you are interested to know when exactly each callback is called, consult a Box2d manual
---
--- @param beginContact function Gets called when two fixtures begin to overlap.
--- @param endContact function Gets called when two fixtures cease to overlap. This will also be called outside of a world update, when colliding objects are destroyed.
--- @param preSolve function Gets called before a collision gets resolved.
--- @param postSolve function Gets called after the collision has been resolved.
--- @return nil
function World:setCallbacks(beginContact, endContact, preSolve, postSolve) return  end
--- Sets a function for collision filtering.
--- 
--- If the group and category filtering doesn't generate a collision decision, this function gets called with the two fixtures as arguments. The function should return a boolean value where true means the fixtures will collide and false means they will pass through each other.
---
--- @param filter function The function handling the contact filtering.
--- @return nil
function World:setContactFilter(filter) return  end
--- Set the gravity of the world.
---
--- @param x number The x component of gravity.
--- @param y number The y component of gravity.
--- @return nil
function World:setGravity(x, y) return  end
--- Sets the sleep behaviour of the world.
---
--- @param allow boolean True if bodies in the world are allowed to sleep, or false if not.
--- @return nil
function World:setSleepingAllowed(allow) return  end
--- Translates the World's origin. Useful in large worlds where floating point precision issues become noticeable at far distances from the origin.
---
--- @param x number The x component of the new origin with respect to the old origin.
--- @param y number The y component of the new origin with respect to the old origin.
--- @return nil
function World:translateOrigin(x, y) return  end
--- Update the state of the world.
---
--- @param dt number The time (in seconds) to advance the physics simulation.
--- @param velocityiterations number The maximum number of steps used to determine the new velocities when resolving a collision.
--- @param positioniterations number The maximum number of steps used to determine the new positions when resolving a collision.
--- @return nil
function World:update(dt, velocityiterations, positioniterations) return  end

--#endregion types
--#region functions
-- ************************************************************ --
-- ************************************************************ --
-- Functions
-- ************************************************************ --
-- ************************************************************ --

--- Returns the two closest points between two fixtures and their distance.
---
--- @param fixture1 Fixture The first fixture.
--- @param fixture2 Fixture The second fixture.
--- @return number distance The distance of the two points.
--- @return number x1 The x-coordinate of the first point.
--- @return number y1 The y-coordinate of the first point.
--- @return number x2 The x-coordinate of the second point.
--- @return number y2 The y-coordinate of the second point.
function love.physics.getDistance(fixture1, fixture2) return 0, 0, 0, 0, 0 end

--- Returns the meter scale factor.
--- 
--- All coordinates in the physics module are divided by this number, creating a convenient way to draw the objects directly to the screen without the need for graphics transformations.
--- 
--- It is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters.
---
--- @return number scale The scale factor as an integer.
function love.physics.getMeter() return 0 end

--- Creates a new body.
--- 
--- There are three types of bodies. 
--- 
--- * Static bodies do not move, have a infinite mass, and can be used for level boundaries. 
--- 
--- * Dynamic bodies are the main actors in the simulation, they collide with everything. 
--- 
--- * Kinematic bodies do not react to forces and only collide with dynamic bodies.
--- 
--- The mass of the body gets calculated when a Fixture is attached or removed, but can be changed at any time with Body:setMass or Body:resetMassData.
---
--- @param world World The world to create the body in.
--- @param x number The x position of the body.
--- @param y number The y position of the body.
--- @param type BodyType The type of the body.
--- @return Body body A new body.
function love.physics.newBody(world, x, y, type) return {} end

--- Creates a new ChainShape.
---
--- @param loop boolean If the chain should loop back to the first point.
--- @param x1 number The x position of the first point.
--- @param y1 number The y position of the first point.
--- @param x2 number The x position of the second point.
--- @param y2 number The y position of the second point.
--- @param ... number Additional point positions.
--- @return ChainShape shape The new shape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newChainShape(loop, x1, y1, x2, y2, ...) return {} end

--- Creates a new ChainShape.
---
--- @param loop boolean If the chain should loop back to the first point.
--- @param points table A list of points to construct the ChainShape, in the form of {x1, y1, x2, y2, ...}.
--- @return ChainShape shape The new shape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newChainShape(loop, points) return {} end

--- Creates a new CircleShape.
---
--- @param radius number The radius of the circle.
--- @return CircleShape shape The new shape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newCircleShape(radius) return {} end

--- Creates a new CircleShape.
---
--- @param x number The x position of the circle.
--- @param y number The y position of the circle.
--- @param radius number The radius of the circle.
--- @return CircleShape shape The new shape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newCircleShape(x, y, radius) return {} end

--- Creates a DistanceJoint between two bodies.
--- 
--- This joint constrains the distance between two points on two bodies to be constant. These two points are specified in world coordinates and the two bodies are assumed to be in place when this joint is created. The first anchor point is connected to the first body and the second to the second body, and the points define the length of the distance joint.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x1 number The x position of the first anchor point (world space).
--- @param y1 number The y position of the first anchor point (world space).
--- @param x2 number The x position of the second anchor point (world space).
--- @param y2 number The y position of the second anchor point (world space).
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return DistanceJoint joint The new distance joint.
function love.physics.newDistanceJoint(body1, body2, x1, y1, x2, y2, collideConnected) return {} end

--- Creates a new EdgeShape.
---
--- @param x1 number The x position of the first point.
--- @param y1 number The y position of the first point.
--- @param x2 number The x position of the second point.
--- @param y2 number The y position of the second point.
--- @return EdgeShape shape The new shape.
function love.physics.newEdgeShape(x1, y1, x2, y2) return {} end

--- Creates and attaches a Fixture to a body.
--- 
--- Note that the Shape object is copied rather than kept as a reference when the Fixture is created. To get the Shape object that the Fixture owns, use Fixture:getShape.
---
--- @param body Body The body which gets the fixture attached.
--- @param shape Shape The shape to be copied to the fixture.
--- @param density number The density of the fixture.
--- @return Fixture fixture The new fixture.
function love.physics.newFixture(body, shape, density) return {} end

--- Create a friction joint between two bodies. A FrictionJoint applies friction to a body.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x number The x position of the anchor point.
--- @param y number The y position of the anchor point.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return FrictionJoint joint The new FrictionJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newFrictionJoint(body1, body2, x, y, collideConnected) return {} end

--- Create a friction joint between two bodies. A FrictionJoint applies friction to a body.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x1 number The x position of the first anchor point.
--- @param y1 number The y position of the first anchor point.
--- @param x2 number The x position of the second anchor point.
--- @param y2 number The y position of the second anchor point.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return FrictionJoint joint The new FrictionJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newFrictionJoint(body1, body2, x1, y1, x2, y2, collideConnected) return {} end

--- Create a GearJoint connecting two Joints.
--- 
--- The gear joint connects two joints that must be either  prismatic or  revolute joints. Using this joint requires that the joints it uses connect their respective bodies to the ground and have the ground as the first body. When destroying the bodies and joints you must make sure you destroy the gear joint before the other joints.
--- 
--- The gear joint has a ratio the determines how the angular or distance values of the connected joints relate to each other. The formula coordinate1 + ratio * coordinate2 always has a constant value that is set when the gear joint is created.
---
--- @param joint1 Joint The first joint to connect with a gear joint.
--- @param joint2 Joint The second joint to connect with a gear joint.
--- @param ratio number The gear ratio.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return GearJoint joint The new gear joint.
function love.physics.newGearJoint(joint1, joint2, ratio, collideConnected) return {} end

--- Creates a joint between two bodies which controls the relative motion between them.
--- 
--- Position and rotation offsets can be specified once the MotorJoint has been created, as well as the maximum motor force and torque that will be be applied to reach the target offsets.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param correctionFactor number The joint's initial position correction factor, in the range of 1.
--- @return MotorJoint joint The new MotorJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newMotorJoint(body1, body2, correctionFactor) return {} end

--- Creates a joint between two bodies which controls the relative motion between them.
--- 
--- Position and rotation offsets can be specified once the MotorJoint has been created, as well as the maximum motor force and torque that will be be applied to reach the target offsets.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param correctionFactor number The joint's initial position correction factor, in the range of 1.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return MotorJoint joint The new MotorJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newMotorJoint(body1, body2, correctionFactor, collideConnected) return {} end

--- Create a joint between a body and the mouse.
--- 
--- This joint actually connects the body to a fixed point in the world. To make it follow the mouse, the fixed point must be updated every timestep (example below).
--- 
--- The advantage of using a MouseJoint instead of just changing a body position directly is that collisions and reactions to other joints are handled by the physics engine. 
---
--- @param body Body The body to attach to the mouse.
--- @param x number The x position of the connecting point.
--- @param y number The y position of the connecting point.
--- @return MouseJoint joint The new mouse joint.
function love.physics.newMouseJoint(body, x, y) return {} end

--- Creates a new PolygonShape.
--- 
--- This shape can have 8 vertices at most, and must form a convex shape.
---
--- @param x1 number The x position of the first point.
--- @param y1 number The y position of the first point.
--- @param x2 number The x position of the second point.
--- @param y2 number The y position of the second point.
--- @param x3 number The x position of the third point.
--- @param y3 number The y position of the third point.
--- @param ... number You can continue passing more point positions to create the PolygonShape.
--- @return PolygonShape shape A new PolygonShape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newPolygonShape(x1, y1, x2, y2, x3, y3, ...) return {} end

--- Creates a new PolygonShape.
--- 
--- This shape can have 8 vertices at most, and must form a convex shape.
---
--- @param vertices table A list of vertices to construct the polygon, in the form of {x1, y1, x2, y2, x3, y3, ...}.
--- @return PolygonShape shape A new PolygonShape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newPolygonShape(vertices) return {} end

--- Creates a PrismaticJoint between two bodies.
--- 
--- A prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a  revolute joint, but with translation and force substituted for angle and torque.
---
--- @param body1 Body The first body to connect with a prismatic joint.
--- @param body2 Body The second body to connect with a prismatic joint.
--- @param x number The x coordinate of the anchor point.
--- @param y number The y coordinate of the anchor point.
--- @param ax number The x coordinate of the axis vector.
--- @param ay number The y coordinate of the axis vector.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return PrismaticJoint joint The new prismatic joint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newPrismaticJoint(body1, body2, x, y, ax, ay, collideConnected) return {} end

--- Creates a PrismaticJoint between two bodies.
--- 
--- A prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a  revolute joint, but with translation and force substituted for angle and torque.
---
--- @param body1 Body The first body to connect with a prismatic joint.
--- @param body2 Body The second body to connect with a prismatic joint.
--- @param x1 number The x coordinate of the first anchor point.
--- @param y1 number The y coordinate of the first anchor point.
--- @param x2 number The x coordinate of the second anchor point.
--- @param y2 number The y coordinate of the second anchor point.
--- @param ax number The x coordinate of the axis unit vector.
--- @param ay number The y coordinate of the axis unit vector.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return PrismaticJoint joint The new prismatic joint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newPrismaticJoint(body1, body2, x1, y1, x2, y2, ax, ay, collideConnected) return {} end

--- Creates a PrismaticJoint between two bodies.
--- 
--- A prismatic joint constrains two bodies to move relatively to each other on a specified axis. It does not allow for relative rotation. Its definition and operation are similar to a  revolute joint, but with translation and force substituted for angle and torque.
---
--- @param body1 Body The first body to connect with a prismatic joint.
--- @param body2 Body The second body to connect with a prismatic joint.
--- @param x1 number The x coordinate of the first anchor point.
--- @param y1 number The y coordinate of the first anchor point.
--- @param x2 number The x coordinate of the second anchor point.
--- @param y2 number The y coordinate of the second anchor point.
--- @param ax number The x coordinate of the axis unit vector.
--- @param ay number The y coordinate of the axis unit vector.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @param referenceAngle number The reference angle between body1 and body2, in radians.
--- @return PrismaticJoint joint The new prismatic joint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newPrismaticJoint(body1, body2, x1, y1, x2, y2, ax, ay, collideConnected, referenceAngle) return {} end

--- Creates a PulleyJoint to join two bodies to each other and the ground.
--- 
--- The pulley joint simulates a pulley with an optional block and tackle. If the ratio parameter has a value different from one, then the simulated rope extends faster on one side than the other. In a pulley joint the total length of the simulated rope is the constant length1 + ratio * length2, which is set when the pulley joint is created.
--- 
--- Pulley joints can behave unpredictably if one side is fully extended. It is recommended that the method  setMaxLengths  be used to constrain the maximum lengths each side can attain.
---
--- @param body1 Body The first body to connect with a pulley joint.
--- @param body2 Body The second body to connect with a pulley joint.
--- @param gx1 number The x coordinate of the first body's ground anchor.
--- @param gy1 number The y coordinate of the first body's ground anchor.
--- @param gx2 number The x coordinate of the second body's ground anchor.
--- @param gy2 number The y coordinate of the second body's ground anchor.
--- @param x1 number The x coordinate of the pulley joint anchor in the first body.
--- @param y1 number The y coordinate of the pulley joint anchor in the first body.
--- @param x2 number The x coordinate of the pulley joint anchor in the second body.
--- @param y2 number The y coordinate of the pulley joint anchor in the second body.
--- @param ratio number The joint ratio.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return PulleyJoint joint The new pulley joint.
function love.physics.newPulleyJoint(body1, body2, gx1, gy1, gx2, gy2, x1, y1, x2, y2, ratio, collideConnected) return {} end

--- Shorthand for creating rectangular PolygonShapes. 
--- 
--- By default, the local origin is located at the '''center''' of the rectangle as opposed to the top left for graphics.
---
--- @param width number The width of the rectangle.
--- @param height number The height of the rectangle.
--- @return PolygonShape shape A new PolygonShape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newRectangleShape(width, height) return {} end

--- Shorthand for creating rectangular PolygonShapes. 
--- 
--- By default, the local origin is located at the '''center''' of the rectangle as opposed to the top left for graphics.
---
--- @param x number The offset along the x-axis.
--- @param y number The offset along the y-axis.
--- @param width number The width of the rectangle.
--- @param height number The height of the rectangle.
--- @param angle number The initial angle of the rectangle.
--- @return PolygonShape shape A new PolygonShape.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newRectangleShape(x, y, width, height, angle) return {} end

--- Creates a pivot joint between two bodies.
--- 
--- This joint connects two bodies to a point around which they can pivot.
---
--- @param body1 Body The first body.
--- @param body2 Body The second body.
--- @param x number The x position of the connecting point.
--- @param y number The y position of the connecting point.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return RevoluteJoint joint The new revolute joint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newRevoluteJoint(body1, body2, x, y, collideConnected) return {} end

--- Creates a pivot joint between two bodies.
--- 
--- This joint connects two bodies to a point around which they can pivot.
---
--- @param body1 Body The first body.
--- @param body2 Body The second body.
--- @param x1 number The x position of the first connecting point.
--- @param y1 number The y position of the first connecting point.
--- @param x2 number The x position of the second connecting point.
--- @param y2 number The y position of the second connecting point.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @param referenceAngle number The reference angle between body1 and body2, in radians.
--- @return RevoluteJoint joint The new revolute joint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newRevoluteJoint(body1, body2, x1, y1, x2, y2, collideConnected, referenceAngle) return {} end

--- Creates a joint between two bodies. Its only function is enforcing a max distance between these bodies.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x1 number The x position of the first anchor point.
--- @param y1 number The y position of the first anchor point.
--- @param x2 number The x position of the second anchor point.
--- @param y2 number The y position of the second anchor point.
--- @param maxLength number The maximum distance for the bodies.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return RopeJoint joint The new RopeJoint.
function love.physics.newRopeJoint(body1, body2, x1, y1, x2, y2, maxLength, collideConnected) return {} end

--- Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x number The x position of the anchor point (world space).
--- @param y number The y position of the anchor point (world space).
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return WeldJoint joint The new WeldJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newWeldJoint(body1, body2, x, y, collideConnected) return {} end

--- Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x1 number The x position of the first anchor point (world space).
--- @param y1 number The y position of the first anchor point (world space).
--- @param x2 number The x position of the second anchor point (world space).
--- @param y2 number The y position of the second anchor point (world space).
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return WeldJoint joint The new WeldJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newWeldJoint(body1, body2, x1, y1, x2, y2, collideConnected) return {} end

--- Creates a constraint joint between two bodies. A WeldJoint essentially glues two bodies together. The constraint is a bit soft, however, due to Box2D's iterative solver.
---
--- @param body1 Body The first body to attach to the joint.
--- @param body2 Body The second body to attach to the joint.
--- @param x1 number The x position of the first anchor point (world space).
--- @param y1 number The y position of the first anchor point  (world space).
--- @param x2 number The x position of the second anchor point (world space).
--- @param y2 number The y position of the second anchor point (world space).
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @param referenceAngle number The reference angle between body1 and body2, in radians.
--- @return WeldJoint joint The new WeldJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newWeldJoint(body1, body2, x1, y1, x2, y2, collideConnected, referenceAngle) return {} end

--- Creates a wheel joint.
---
--- @param body1 Body The first body.
--- @param body2 Body The second body.
--- @param x number The x position of the anchor point.
--- @param y number The y position of the anchor point.
--- @param ax number The x position of the axis unit vector.
--- @param ay number The y position of the axis unit vector.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return WheelJoint joint The new WheelJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newWheelJoint(body1, body2, x, y, ax, ay, collideConnected) return {} end

--- Creates a wheel joint.
---
--- @param body1 Body The first body.
--- @param body2 Body The second body.
--- @param x1 number The x position of the first anchor point.
--- @param y1 number The y position of the first anchor point.
--- @param x2 number The x position of the second anchor point.
--- @param y2 number The y position of the second anchor point.
--- @param ax number The x position of the axis unit vector.
--- @param ay number The y position of the axis unit vector.
--- @param collideConnected boolean Specifies whether the two bodies should collide with each other.
--- @return WheelJoint joint The new WheelJoint.
--- @diagnostic disable-next-line: duplicate-set-field
function love.physics.newWheelJoint(body1, body2, x1, y1, x2, y2, ax, ay, collideConnected) return {} end

--- Creates a new World.
---
--- @param xg number The x component of gravity.
--- @param yg number The y component of gravity.
--- @param sleep boolean Whether the bodies in this world are allowed to sleep.
--- @return World world A brave new World.
function love.physics.newWorld(xg, yg, sleep) return {} end

--- Sets the pixels to meter scale factor.
--- 
--- All coordinates in the physics module are divided by this number and converted to meters, and it creates a convenient way to draw the objects directly to the screen without the need for graphics transformations.
--- 
--- It is recommended to create shapes no larger than 10 times the scale. This is important because Box2D is tuned to work well with shape sizes from 0.1 to 10 meters. The default meter scale is 30.
---
--- @param scale number The scale factor as an integer.
--- @return nil
function love.physics.setMeter(scale) return  end

--#endregion functions
