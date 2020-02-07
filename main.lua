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
	game:draw()
	--love.graphics.draw(animTable[1], 1, 1,0, 1, 1)
	--love.graphics.draw(empt, 1, 1, 0, .25, .25)
end

function love.keypressed(key, code)
	game:keypressed(key, code)
end

function love.mousepressed(x, y, button, istouch)
	game:mousepressed(x, y, button, istouch)
end