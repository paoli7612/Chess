local piece = require('pieces/piece')

function Pawn(boss, x, y, team)
    local pawn = Piece(boss, x, y, team, 'pawn')

    if team then
        pawn.quad = love.graphics.newQuad(5*128, 128, 128, 128, image:getDimensions())
    else
        pawn.quad = love.graphics.newQuad(5*128, 0, 128, 128, image:getDimensions())
    end

    return pawn
end

return Pawn