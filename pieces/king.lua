local piece = require('pieces/piece')

function King(boss, x, y, team)
    local king = Piece(boss, x, y, team)

    if team then
        king.quad = love.graphics.newQuad(128*3, 128, 128, 128, image:getDimensions())
    else
        king.quad = love.graphics.newQuad(128*3, 0, 128, 128, image:getDimensions())
    end
    return king
end

return King