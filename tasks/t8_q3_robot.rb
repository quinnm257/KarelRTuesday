

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class T8Q3Robot < UrRobot

include Turner

def initialize (street, avenue, direction, beepers, colour)
    super(street, avenue, direction, beepers, colour)
end

def move
	super
	super
	super
	super
	super
end

def give_beeper
	move
	put_beeper
	turn_right
end

def pick_give 
	pick_beeper
	give_beeper
end 

end

