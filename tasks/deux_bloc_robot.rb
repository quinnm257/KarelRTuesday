

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class DeuxBlocRobot < UrRobot

include Turner

def move
	super
	super
end

def square
	move
	move
	turn_right
	move
	move
	turn_right
	move
	move
	turn_right
	move
	move
	turn_right
end

end

