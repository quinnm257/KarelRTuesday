require_relative "../karel/ur_robot"
# A class whose robots know how to sweep a short staircase of beepers
class QuinnRobot < UrRobot
	def turn_right
		turn_left
		turn_left
		turn_left

	end

	def back_up
		turn_left
		turn_left
		move
		turn_left
		turn_left

	end

	


end
