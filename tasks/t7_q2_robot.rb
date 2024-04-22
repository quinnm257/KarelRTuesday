

require_relative "../karel/ur_robot"
require_relative "../mixins/beepers"

class T7Q2Robot < UrRobot

include Beepers

def tache
move
put_beeper
two_stair_right
put_beeper
put_beeper
two_stair_left
put_3
turn_right
move
move
move
put_3
put_beeper
two_stair_right
put_5
two_stair_left
put_3
put_3
turn_right
move
move
move
put_5
put_beeper
put_beeper
two_stair_right
put_3
put_5
two_stair_left
put_3
put_3
put_3
turn_right
move
move
move
put_5
put_5
two_stair_right
put_5
put_5
put_beeper
two_stair_left
put_5
put_5
put_beeper
put_beeper
move
end


end

