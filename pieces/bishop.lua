local piece = require('pieces/piece')

function Bishop(boss, x, y, team)
    local bishop = Piece(boss, x, y, team)

    if team then
        bishop.quad = love.graphics.newQuad(2*128, 128, 128, 128, image:getDimensions())
    else
        bishop.quad = love.graphics.newQuad(2*128, 0, 128, 128, image:getDimensions())
    end

    return bishop
end

return Bishop