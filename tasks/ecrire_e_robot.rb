

require_relative "../karel/ur_robot"
require_relative "../mixins/place_beepers"

class EcrireERobot < UrRobot

include PlaceBeepers

def initialize (street, avenue, beepers)
    super(street, avenue, WEST, beepers)
end

def ecrire_lettre
	put_move
	put_move
	turn_right
	put_4
	put_beeper
	turn_right
	move
	put_move
	put_move
	turn_right
	move
	move
	turn_right
	move
	put_move
	put_move
end


end

