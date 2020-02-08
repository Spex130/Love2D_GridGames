
Game = class('Game'):include(Stateful)

require 'states/menu'
require 'states/pause'
require 'states/game_over'

windowScaleFactor = .5

function Game:initialize()

	gameWidth, gameHeight = 1080, 720

	local windowWidth, windowHeight = love.window.getDesktopDimensions()
	windowWidth, windowHeight = windowWidth*.5, windowHeight*.5

	push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    fullscreen = false,
    resizable = true,
    highdpi = true,
    canvas = true
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


