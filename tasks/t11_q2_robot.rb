

require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"

class T11Q2Robot < UrRobot

include SensorPack

def move
unless front_is_blocked?
	super
end
end


end

