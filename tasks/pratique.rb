
require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class Pratique < UrRobot

include Turner

	def move_5
		move
		move
		move
		move
		move
	end 

	def mettre_5_beeper
		put_beeper
		put_beeper
		put_beeper
		put_beeper
		put_beeper
	end

	def diagonale_droit
		move
		turn_right
		move
		turn_left
	end

	def diagonale_gauche
		move
		turn_left
		move
		turn_right		
	end


end

