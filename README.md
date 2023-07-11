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
