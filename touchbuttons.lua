local touchbuttons = {}
touchbuttons.__index = touchbuttons

function touchbuttons:newRectangleButton(x, y, w, h)
  local self = setmetatable({}, touchbuttons)
  self.x = x
  self.y = y
  self.w = w
  self.h = h
  self.isPressed = false
  return self
end

function touchbuttons:getPosition()
  return self.x, self.y
end

function touchbuttons:getX()
  return self.x
end

function touchbuttons:getY()
  return self.y
end

function touchbuttons:setPosition(x, y)
  self.y = y
  self.x = x
end

function touchbuttons:getDimensions()
  return self.w, self.h
end

function touchbuttons:getWidth()
  return self.w
end

function touchbuttons:getHeight()
  return self.h
end

function touchbuttons:setDimensions(w, h)
  self.w = w
  self.h = h
end

function touchbuttons:checkPressed()
  local touches = love.touch.getTouches()
  local isButtonPressed = false
  for i,v in ipairs(touches) do
    local touchX, touchY = love.touch.getPosition(v)
      if touchX < self.x + self.w and
         touchX + 10 > self.x and
         touchY < self.y + self.h and
         touchY + 10 > self.y and 
         love.mouse.isDown(1) then
        isButtonPressed = true
        break
      else
        isButtonPressed = false
        
      end 
  end
  if isButtonPressed == true then
    self.isPressed = true
  elseif isButtonPressed == false then
    self.isPressed = false
  end
  return self.isPressed
end

function touchbuttons:draw()
  love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
end

return touchbuttons
