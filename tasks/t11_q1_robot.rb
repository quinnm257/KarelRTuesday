

require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"

class T11Q1Robot < UrRobot

include SensorPack

def move
if front_is_clear?
	super
end
end


end

