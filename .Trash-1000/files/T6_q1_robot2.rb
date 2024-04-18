

require_relative "../karel/ur_robot"

class RobotT6Q1 < UrRobot

def turn_right
    turn_left
    turn_left
    turn_left
  end

def climb_stair
    turn_left
    move
    turn_right
    move
  end

def climb
	climb.stairs
	climb.stairs
	climb.stairs
end

end

