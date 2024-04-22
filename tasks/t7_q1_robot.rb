

require_relative "../karel/ur_robot"
require_relative "../mixins/beepers"

class T7Q1Robot < UrRobot
include Beepers

def tache
place_7
turn_left
place_7
turn_left
place_7
turn_left
place_7
turn_left
end


end

