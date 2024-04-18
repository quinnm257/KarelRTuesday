

require_relative "../karel/ur_robot"
require_relative "../mixins/stairs"

class T6Q1Robot < UrRobot
include Stairs

def tache
move
put_beeper
stair_left
put_beeper
turn_right
move
move
put_beeper
turn_left
stair_right
put_beeper
turn_left
move
move
put_beeper
move
move
put_beeper
turn_right
stair_left
put_beeper
turn_right
move
move
put_beeper
move
move
put_beeper
move
move
put_beeper
end


end

