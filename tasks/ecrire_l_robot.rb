

require_relative "../karel/ur_robot"
require_relative "../mixins/place_beepers"

class EcrireLRobot < UrRobot

include PlaceBeepers

def initialize (street, avenue, beepers)
    super(street, avenue, WEST, beepers)
end

def ecrire_lettre
	put_move
	put_move
	turn_right
	put_5
end


end

