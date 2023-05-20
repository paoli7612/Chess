local Board = require('board')
local Match = require('match')
local Team = require('team')

function Boss()
    local boss = {
        board = Board()
    }
    team1 = Team(boss, true)
    team2 = Team(boss, false)

    boss.match = Match(team1, team2)

    function boss.quit()
        love.event.quit()
    end

    return boss
end

function love.load()
    boss = Boss()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.window.setMode(boss.board.W, boss.board.H)
end

function love.draw()
    boss.board.draw()
    team1.draw()
    team2.draw()
end

function love.keypressed(key, scancode, isrepeat)
    if key == 'escape' then
        boss.quit()
    end 
end

function love.mousepressed( x, y, button, istouch, presses )
    print(boss.grill)
end
