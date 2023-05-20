local piece = require('pieces/piece')

function Horse(boss, x, y, team)
    local horse = Piece(boss, x, y, team)

    if team then
        horse.quad = love.graphics.newQuad(128, 128, 128, 128, image:getDimensions())
    else
        horse.quad = love.graphics.newQuad(128, 0, 128, 128, image:getDimensions())
    end
    return horse
end

return Horse