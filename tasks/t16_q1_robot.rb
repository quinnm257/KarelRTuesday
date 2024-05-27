

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"

class T16Q1Robot < UrRobot

include Turner
include SensorPack

def rectangle
	while true
		if next_to_a_beeper?
			pick_beeper
		else
			put_beeper
		end
		until front_is_blocked?
			move
			if next_to_a_beeper?
				pick_beeper
			else
				put_beeper
			end
		end
		if facing_east?
			turn_left
			move
			turn_left
		elsif facing_west?
			turn_right
			if front_is_clear?
				move
				turn_right
			elsif front_is_blocked?
				turn_left
				turn_left
				17.times do move
				end
				turn_left
			end
		end
	end
end


end

