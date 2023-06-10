function Cursor(board) 
    cursor = {x = 0, y = 0}

    function cursor.draw() 
        local mx = cursor.x * board.S
        local my = cursor.y * board.S
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle('line', mx, my, board.S, board.S, 6)
    end

    function cursor.setPos(x, y)
        cursor.x = math.floor(x/board.S)
        cursor.y = math.floor(y/board.S)
    end

    return cursor
end
return Cursor