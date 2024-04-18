

require_relative "../karel/ur_robot"
require_relative "../mixins/stairs"

class T6Q2Robot < UrRobot
include Stairs

def tache
move
pick_beeper
stair_left
pick_beeper
turn_right
move
move
pick_beeper
turn_left
stair_right
pick_beeper
turn_left
move
move
pick_beeper
move
move
pick_beeper
turn_right
stair_left
pick_beeper
turn_right
move
move
pick_beeper
move
move
pick_beeper
move
move
pick_beeper
turn_left
stair_left
pick_beeper
turn_left
move
move
pick_beeper
move
move
pick_beeper
turn_right
stair_right
pick_beeper
turn_right
move
move
pick_beeper
turn_left
stair_left
pick_beeper
end


end

