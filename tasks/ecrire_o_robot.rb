

require_relative "../karel/ur_robot"
require_relative "../mixins/place_beepers"

class EcrireORobot < UrRobot

include PlaceBeepers

def initialize (street, avenue, beepers)
    super(street, avenue, NORTH, beepers)
end

def ecrire_lettre
	put_4
	turn_right
	put_move
	put_move
	turn_right
	put_4
	turn_right
	put_move
	put_move
end


end

