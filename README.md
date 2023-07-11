# TouchButtons-for-Love
Just a library to quickly and easily create tactile buttons
# Start
Put the ``touchbuttons.lua`` file in your project
```lua
TouchButtons = require('touchbuttons')
```
# Create A Button and Check If Press
```lua
function love.load()
    TouchButtons = require('touchbuttons')
    Button = TouchButtons:newRectangleButton(50, 100, 50, 50)
end

function love.draw()
    Button:draw()
    if Button:checkPressed() then
        love.graphics.print('Button Pressed', 50, 200)
    end
end
```

# Documentation

## Buttons

Tactile buttons

#### ``:newRectangleButton(x, y, w, h)``

Creates a new rectangular button

```lua
Button = TouchButtons:newRectangleButton(50, 100, 40, 30)
```

Arguments:
* `x` `(number)`-Rectangular button X position
* `y` `(number)`-Rectangular button Y position
* `w` `(number)`-Rectangular button Width
* `h` `(number)`-Rectangular button Height

---

## Button Properties

Check the properties of a button

#### ``:checkPressed()``

Returns true or false depending on whether the button has been pressed

```lua
buttonIsPressed = Button:checkPressed()
```

Returns:
* `Button.isPressed` `(Boolean)`

---

#### ``:getPosition()``

Returns the X and Y position of the button

```lua
x, y = Button:getPosition()
```

Returns:
* `Button.X` `(number)`-X position of the button
* `Button.Y` `(number)`-Y position of the button

---

#### ``:getX()``

Returns the X position of the button

```lua
x = getX()
```

Returns:
* `Button.X` `(number)`-X position of the button

---

#### ``:getY()``

Returns the Y position of the button

```lua
x = getX()
```

Returns:
* `Button.Y` `(number)`-Y position of the button
