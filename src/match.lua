function Match(team1, team2)
    local match = {
        team1 = team1,
        team2 = team2
    }

    function match.start() 
        print("Turno del team1")
    end

    return match
end

return Match