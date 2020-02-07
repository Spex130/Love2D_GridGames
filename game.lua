
Game = class('Game'):include(Stateful)

require 'states/menu'
require 'states/pause'
require 'states/game_over'

windowScaleFactor = .8

function Game:initialize()

	love.graphics.setDefaultFilter("nearest", "nearest") --disable blurry scaling
	local gameWidth, gameHeight = 600, 600
	local windowWidth, windowHeight = love.window.getDesktopDimensions()
	windowWidth, windowHeight = windowWidth*windowScaleFactor, windowHeight*windowScaleFactor

  push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    fullscreen = false,
    resizable = true,
    pixelperfect = true
  })
	self:gotoState('Pause')
end

function Game:exit()
	
end

function Game:update(dt)

end

function Game:draw()

end

function Game:keypressed(key, code)
	--Test: Pause Game
	if key == 'p' then
		self:pushState('Pause')
	end
end

function Game:mousepressed(x, y, button, isTouch)
end


