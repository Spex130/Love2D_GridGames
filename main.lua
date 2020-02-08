class = require 'lib/middleclass'	--OOP Classes
Stateful = require 'lib/stateful'	--State Machines
push = require "lib/push"			--Window Resizing

require 'game'
local game


--Fonts
pixelFont = love.graphics.newFont("assets/PressStart2P-Regular.ttf", 15)

function love.load(arg)
	game = Game:new()
end

function love.update(dt)
	game:update(dt)
end

function love.draw(dt)
push:apply("start")
love.graphics.setScissor(0, 0, push:getWidth(), push:getHeight()-16)
	game:draw()
love.graphics.setScissor()
push:apply("end")
end

function love.keypressed(key, code)
	game:keypressed(key, code)
end

function love.mousepressed(x, y, button, istouch)
	game:mousepressed(x, y, button, istouch)
end

function love.resize(w, h)
  push:resize(w, h)
end