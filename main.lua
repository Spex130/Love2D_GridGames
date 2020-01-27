local animfile = require "animFile"
local animator = require 'animator'
local animTable

function love.update(dt)

end


function love.load(arg)
	love.graphics.setDefaultFilter( 'nearest', 'nearest' )
	empt = love.graphics.newImage('assets/TestMage.png')
	--animTable = {one = love.graphics.newImage( 'assets/blocksEmp.png' ), two = love.graphics.newImage( 'assets/Grassland_01.png' )}


	--anim = animator.newAnimation( { animTable[1], animTable[2]}, { 1, 1})
	--anim:setLooping()
	rotation = 0
end

function love.draw(dt)
	--love.graphics.draw(animTable[1], 1, 1,0, 1, 1)
	love.graphics.draw(empt, 1, 1, 0, .25, .25)
end