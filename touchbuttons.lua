local touchbuttons = {}
touchbuttons.__index = touchbuttons

function touchbuttons:newRectangleButton(x, y, w, h, buttonType)
  local self = setmetatable({}, touchbuttons)
  self.x = x
  self.y = y
  self.w = w
  self.h = h
  self.isPressed = false
  self.type = buttonType
  if self.type ~= 'mouse' and self.type ~= 'touch' then error(self.type..' is not an existing type of button', 2) end
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

function touchbuttons:checkPressed(mouseButton)
  local isButtonPressed = false
  --touchButton
  if self.type == 'touch' then
    local touches = love.touch.getTouches()
    for i,v in ipairs(touches) do
     local touchX, touchY = love.touch.getPosition(v)
     if touchX <= self.x + self.w and
     touchX + 10 >= self.x and
     touchY <= self.y + self.h and
     touchY + 10 >= self.y then
       isButtonPressed = true
       break
     else
       isButtonPressed = false
     end 
    end
  --MouseClickButton
  elseif self.type == 'mouse' then
    mouseX, mouseY = love.mouse.getPosition()
    if mouseX <= self.x + self.w and
    mouseX + 10 >= self.x and
    mouseY <= self.y + self.h and
    mouseY + 10 >= self.y and
    love.mouse.isDown(mouseButton) then
      isButtonPressed = true
    else
      isButtonPressed = false
    end 
  end
  --isPressed
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