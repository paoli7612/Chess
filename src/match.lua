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
        if piece and piece.team == match.team then
            print("SELEZIONATO", piece.name, piece.x, piece.y)
            match.selected = piece 
        elseif match.selected and match.selected.move(x, y) then
            match.selected = nil
            match.team = not match.team
        end
    end

    print("Turno del team1")
    match.team = true
    match.selected = nil

    return match
end

return Match