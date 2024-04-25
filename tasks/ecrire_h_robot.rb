

require_relative "../karel/ur_robot"
require_relative "../mixins/place_beepers"

class EcrireHRobot < UrRobot

include PlaceBeepers

def initialize (street, avenue, beepers)
    super(street, avenue, NORTH, beepers)
end

def ecrire_lettre
	put_5
	turn_right
	move
	move
	move
	turn_right
	move
	put_5
	turn_right
	move
	turn_right
	move
	move
	move
	put_beeper
	turn_left
	move
	put_beeper
end


end

