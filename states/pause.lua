local Pause = Game:addState('Pause')
local menuengine = require "lib/menuengine"

function Pause:enteredState()
love.graphics.setFont(pixelFont, 20)
end

function Pause:exitedState()
end

function Pause:draw()



	--DEBUG PAUSE DRAWS
	image = love.graphics.newImage( "assets/gamebackground.png" )
	love.graphics.draw(image, (gameWidth-image:getWidth())*.5, (gameHeight-image:getHeight())*.5, 0, 2, 1)

	--love.graphics.setColor(255, 223, 0)
	--love.graphics.printf('GAME PAUSED', 350, 220, 200, 'center')
	

end

function Pause:keypressed(key, code)
	if key == 'p' then
		self:popState('Pause')
	end
end