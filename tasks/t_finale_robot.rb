
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class TFinaleRobot < UrRobot

include SensorPack
include Turner

def demande_nombre_colonnes
	puts "Combien de colonnes de beepers?"
	$valeur = gets.chomp.to_i
end

def sweep
	12.times do
		if next_to_a_beeper?
			while next_to_a_beeper?
				pick_beeper
			end
		end
		move
	end
end

def sweep_rows
	turn_right
	13.times do
		sweep
		if facing_east?
			turn_left
			move
			turn_left
		elsif facing_west?
			turn_right
			move
			turn_right
		end
	end
end

def retourne_sud
	until facing_south?
		turn_left
	end
	while front_is_clear?
		move
	end
	until facing_west?
		turn_left
	end
	while front_is_clear?
		move
	end
	until facing_north?
		turn_left
	end
end

def place_colonnes_beepers
	(1..$valeur).each do |a|
		until facing_north?
			turn_left
		end
		a.times do 
			if any_beepers_in_beeper_bag?
				put_beeper
			end
			move
		end
		turn_right
		move
		turn_right
		until front_is_blocked?
			move
		end
	end
end


def tache
	demande_nombre_colonnes
	sweep_rows
	retourne_sud
	place_colonnes_beepers
	retourne_sud
end

end
