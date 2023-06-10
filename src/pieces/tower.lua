local piece = require('pieces/piece')

function Tower(boss, x, y, team)
    local tower = Piece(boss, x, y, team, 'tower')

    if team then
        tower.quad = love.graphics.newQuad(0, 128, 128, 128, image:getDimensions())
    else
        tower.quad = love.graphics.newQuad(0, 0, 128, 128, image:getDimensions())
    end
    return tower
end

return Tower