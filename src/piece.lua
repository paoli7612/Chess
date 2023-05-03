function Piece(boss, x, y, team)
    local piece = {
        x = x,
        y = y, 
        team = team
    }
    
    function piece.draw() 
        local S = boss.board.S
        if piece.team then
            love.graphics.setColor(0, 1, 1)
        else
            love.graphics.setColor(1, 0, 1)
        end
        love.graphics.rectangle('fill', piece.x * S, piece.y * S, S, S )
    end
    return piece
end

return Piece