

require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class T14BRobot < UrRobot

include SensorPack
include Turner

def labyrinth

until next_to_a_beeper?
	turn_left
	if front_is_clear?
		move		
	else 
		turn_right
		if front_is_clear?
			move
		else
			turn_right
			if front_is_clear?
				turn_right
			end
		end
	end
end

end
end
