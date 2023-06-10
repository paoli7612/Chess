local piece = require('pieces/piece')

function Queen(boss, x, y, team)
    local queen = Piece(boss, x, y, team, 'queen')

    if team then
        queen.quad = love.graphics.newQuad(128*3, 128, 128, 128, image:getDimensions())
    else
        queen.quad = love.graphics.newQuad(128*3, 0, 128, 128, image:getDimensions())
    end
    return queen
end

return Queen