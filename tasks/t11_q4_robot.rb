

require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class T11Q4Robot < UrRobot

include SensorPack
include Turner

def move

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

if next_to_a_beeper?
	pick_beeper
end

end

def corner
if front_is_blocked?
	n = 1
else
	n = 0
end
turn_left
if front_is_blocked?
	w = 1
else 
	w = 0
end
turn_left
if front_is_blocked?
	s = 1
else
	s = 0
end
turn_left
if front_is_blocked?
	e = 1
else
	e = 0
end
turn_left

if n+s+w+e == 2
	put_beeper
	put_beeper

end
end


def tache
	move
	corner
end

def sweep
	corner
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
	tache
end
end

