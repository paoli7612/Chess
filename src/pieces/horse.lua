local piece = require('pieces/piece')

function Horse(boss, x, y, team)
    local horse = Piece(boss, x, y, team, 'horse')

    if team then
        horse.quad = love.graphics.newQuad(128, 128, 128, 128, image:getDimensions())
    else
        horse.quad = love.graphics.newQuad(128, 0, 128, 128, image:getDimensions())
    end

    function horse.allow(x, y)
        print(math.abs(x-horse.x))
        if math.abs(x-horse.x) == 1 then
            if math.abs(y-horse.y) == 2 then
                return true
            end
        end
        if math.abs(x-horse.x) == 2 then
            if math.abs(y-horse.y) == 1 then
                return true
            end
        end
        return false
    end

    function horse.move(x, y)

        if horse.allow(x, y) then
            horse.x = x
            horse.y = y
            return true
        else
            return false
        end
    end

    return horse
end

return Horse