Piece = require('piece')

function Team(boss, team)
    local Y
    if team then Y = 1
    else Y = 6 end
    local team = {
        pieces = {
            Piece(boss, 0, Y, team),
            Piece(boss, 1, Y, team),
            Piece(boss, 2, Y, team),
            Piece(boss, 3, Y, team),
            Piece(boss, 4, Y, team),
            Piece(boss, 5, Y, team),
            Piece(boss, 6, Y, team),
            Piece(boss, 7, Y, team)
        }
    }
    function team.draw()
        for k,v in pairs(team.pieces) do
            v.draw()
        end	
    end
    return team
end

return Team