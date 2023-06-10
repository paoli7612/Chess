local Board = require('board')
local Match = require('match')
local Team = require('team')
local Cursor = require('cursor')

function Boss()
    local boss = {}
    boss.board = Board()
    boss.team1 = Team(boss, true)
    boss.team2 = Team(boss, false)
    boss.match = Match(boss.team1, boss.team2)

    function boss.quit()
        love.event.quit()
    end

    function boss.click(pos)
        boss.match.click(pos.x, pos.y)
    end

    return boss
end


function love.load()
    boss = Boss()
    cursor = Cursor(boss.board)
    love.graphics.setBackgroundColor(1, 1, 1)
    love.window.setMode(boss.board.W, boss.board.H)
end

function love.draw()
    boss.board.draw()
    boss.team1.draw()
    boss.team2.draw()
    cursor.draw()
end

function love.keypressed(key, scancode, isrepeat)
    if key == 'escape' then
        boss.quit()
    end 
end

function love.mousemoved( x, y, dx, dy, istouch )
    cursor.setPos(x, y)
end


function love.mousepressed( x, y, button, istouch, presses )
    boss.click(cursor)
end
