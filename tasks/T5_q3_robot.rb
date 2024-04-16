require_relative "../karel/ur_robot"


class RobotQ3 < UrRobot

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

	def turn_right
		turn_left
		turn_left
		turn_left
	end

	def beepers
	beeper_row
	turn_right
	move
	turn_right
	beeper_row
	turn_left
	move
	turn_left
	beeper_row
	turn_right
	move
	turn_right
	beeper_row
	turn_left
	move
	turn_left
	beeper_row
	end

end
