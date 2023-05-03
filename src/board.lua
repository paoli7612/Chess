function Board()
    local board = {
        S = 64,
        X = 8,
        Y = 8,
    }
    board.W = board.X * board.S
    board.H = board.Y * board.S

    function board.draw()
        love.graphics.setColor(1/10, 1/10, 1/10)
        local full = true
        for y=0, board.Y do
            for x=0, board.X do
                if full then
                    love.graphics.rectangle('fill', x*board.S, y*board.S, board.S, board.S )
                end
                full = not full
            end        
        end
    end

    return board
end

return Board