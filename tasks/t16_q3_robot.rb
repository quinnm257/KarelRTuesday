

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"

class T16Q3Robot < UrRobot

include Turner
include SensorPack

beepers = []


def demande_valeurs
	puts "deplcament x"
	deplcament_x = gets
	puts "deplacement y"
	deplacement_y = gets
	puts "grandeur x"
	grandeur_x = gets
	puts "grandeur y"
	grandeur_y = gets
end

def ramasse_colonne
	grandeury.times do
		if next_to_a_beeper?
			pick_beeper
			beepers_y << 1
		else
			beepers_y << 0
		end
		move
	end

def bouger
	deplacement_y.times do 
		move
	end
	turn_right
	deplcament_x.times do 
		move
	end
end

def place_colonne
	beepers.each do action
		if action == 1
			put_beeper
		end
		move
	end
end

def bouge_beepers
	demande_valeurs
	ramasse_colonne
	bouger
	place_colonne
end

#not finished


end
end

