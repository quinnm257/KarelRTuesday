

require_relative "../karel/ur_robot"

class RobotFaceNord < UrRobot

def initialize (street, avenue, beepers)
    super(street, avenue, NORTH, beepers)
end

def move
	super
	super
	super
	super
end

def square
turn_left
move
turn_left
move
turn_left
move
turn_left
move
end

end

