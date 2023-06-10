function Piece(boss, x, y, team, name)
    local piece = {
        x = x,
        y = y, 
        name = name,
        team = team
    }
    image = love.graphics.newImage('spritesheet.png')
    if team then
        piece.quad = love.graphics.newQuad(5*128, 128, 128, 128, image:getDimensions())
    else
        piece.quad = love.graphics.newQuad(5*128, 0, 128, 128, image:getDimensions())
    end
        
    function piece.draw() 
        local S = boss.board.S
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(image, piece.quad, piece.x*S, piece.y*S, 0, S/128, S/128)
    end

    function piece.move(x, y)
        print("[non implementato piece.move ]", piece.name)
    end
    return piece
end

return Piece