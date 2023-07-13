# Touch The Love
Just a library to quickly and easily create tactile buttons and mouse clickable buttons
# Start
Put the ``touchbuttons.lua`` file in your project
```lua
TouchButtons = require('touchbuttons')
```
# Create A Button and Check If Press
```lua
function love.load()
    TouchButtons = require('touchbuttons')
    Button = TouchButtons:newRectangleButton(50, 100, 50, 50, 'touch')
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

#### ``:newRectangleButton(x, y, w, h, buttonType)``

Creates a new rectangular button

```lua
Button = TouchButtons:newRectangleButton(50, 100, 40, 30, 'mouse')
```

Arguments:
* `x` `(number)`-Rectangular button X position
* `y` `(number)`-Rectangular button Y position
* `w` `(number)`-Rectangular button Width
* `h` `(number)`-Rectangular button Height
* `buttonType` `(string)`-The type of your button, can be `'touch'` or `'mouse'` respectively

---

#### ``:newCircleButton(x, y, r, buttonType)``

Creates a new circular button

```lua
Button = TouchButtons:newCircleButton(50, 100, 50, 'mouse')
```

Arguments:
* `x` `(number)`-Circle button X position
* `y` `(number)`-Circle button Y position
* `r` `(number)`-Circle button Radius
* `buttonType` `(string)`-The type of your button, can be `'touch'` or `'mouse'` respectively

---

#### ``:draw()``

Draw the button

```lua
Button:draw()
```

---

## Button Properties

Check the properties of a button

#### ``:checkPressed(mouseButton)``

Returns true or false depending on whether the button has been pressed

```lua
buttonPress = Button:checkPressed(1)
```

Arguments:
* `mouseButton` `(number)`-**(Only in case your button is mouse type)**. Mouse button `1` is left click `2` is right click `3` is middle click

Returns:
* `Button.isPressed` `(Boolean)`-True or False respectively if the button is being pressed

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
y = getY()
```

Returns:
* `Button.Y` `(number)`-Y position of the button

---

#### ``:setPosition(x, y)``

Moves the position of the button

```lua
Button:setPosition(10, 20)
```

Arguments:
* `x` `(number)`-New X position of the button
* `y` `(number)`-New Y position of the button

---

#### ``:getDimensions()``

Returns the Width and Height of the button

```lua
w, h = Button:getDimensions()
```

Returns:
* `Button.W` `(number)`-Width of the button
* `Button.H` `(number)`-Height of the button

---

#### ``:getWidth()``

Returns the Width of the button

```lua
w = getWidth()
```

Returns:
* `Button.w` `(number)`-Width of the button

---

#### ``:getHeight()``

Returns the Height of the button

```lua
h = getHeight()
```

Returns:
* `Button.h` `(number)`-Height of the button

---

#### ``:setDimensions(w, h)``

Change the dimensions of the button

```lua
Button:setDimensions(40, 50)
```

Arguments:
* `w` `(number)`-New Width of the button
* `h` `(number)`-New Height of the button
