require_relative "../karel/ur_robot"

class RobotQ2 < UrRobot

	def beeper_row
	put_beeper
  	move
	put_beeper
	move
	put_beeper
	move
	put_beeper
	move
	put_beeper
	
	
	end

end
