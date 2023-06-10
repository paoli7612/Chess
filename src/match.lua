function Match(team1, team2)
    local match = {
        team1 = team1,
        team2 = team2,
    }

    function match.getPiece(x, y)
        piece = match.team1.getPiece(x, y)
        if piece then return piece end
        return match.team2.getPiece(x, y)
    end

    function match.click(x, y)
        piece = match.getPiece(x, y)
        if piece then
            print("CLICCATO SU", piece.x, piece.y)
        end
        if piece and piece.team == match.team then
            match.selected = piece 
        else
            match.selected.move(x, y)
        end
    end

    print("Turno del team1")
    match.team = true
    match.selected = nil

    return match
end

return Match