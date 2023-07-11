# TouchButtons-for-Love
Just a library to quickly and easily create tactile buttons
# Start
Put the ``touchbuttons.lua`` file in your project
```lua
TouchButtons = require('touchbuttons.lua')
```
# Create A Button
```lua
function love.load()
    TouchButtons = require('touchbuttons.lua')
    Button = TouchButtons:newRectangleButton(50, 100, 50, 50)
end

function love.draw()
    TouchButtons:draw()
end
```
