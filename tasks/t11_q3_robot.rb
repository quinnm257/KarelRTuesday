

require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class T11Q3Robot < UrRobot

include SensorPack
include Turner

def move
if next_to_a_beeper?
	pick_beeper
end	
if front_is_clear?
	super
elsif facing_north?
	turn_right
	if front_is_clear?
		super
		turn_right
	else
		turn_right
	end
elsif facing_south?
	turn_left
	if front_is_clear?
		super
		turn_left
	else
		turn_left
	end
end
end

def tache
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move
	move

end
end

