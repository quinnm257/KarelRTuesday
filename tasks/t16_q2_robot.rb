

#c'est printemps et karel doit faire du jardinage
#ramasse les fleurs qui sont mortes et deposes les dans la boite a la droite
#ensuite, prend des nouvelles fleurs de l'autre boite
#et puis plante les fleurs au long du bord de l'interieur des murs


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"

class T16Q2Robot < UrRobot

include Turner
include SensorPack

def commence
	move
	until next_to_a_beeper?
		move
	end
	turn_right
		if front_is_clear?
			move		
		else 
			turn_left
			if front_is_clear?
				move
			else
				turn_left
				if front_is_clear?
					turn_left
				end
			end
		end
end

def fleurs_mortes
	x=0
	if next_to_a_beeper?
			pick_beeper
			x = x + 1    #x est le nombre de beepers qui se trouve a une intersection
	end
	until x == 2
		x = 0
		turn_right
		if front_is_clear?
			move		
		else 
			turn_left
			if front_is_clear?
				move
			else
				turn_left
				if front_is_clear?
					turn_left
				end
			end
		end
		until next_to_a_beeper? == false
			pick_beeper
			x = x + 1
		end
		if x == 2
			put_beeper
			put_beeper
		end
	end
end

def prochaine_mur
	if front_is_clear?
			move		
		else 
			turn_left
			if front_is_clear?
				move
			else
				turn_left
				if front_is_clear?
					turn_left
				end
			end
		end
	until next_to_a_beeper?
		move
	end
	turn_right
		if front_is_clear?
			move		
		else 
			turn_left
			if front_is_clear?
				move
			else
				turn_left
				if front_is_clear?
					turn_left
				end
			end
		end
end

def depose_fleurs_mortes
	until facing_west?
		turn_left
	end
	move
	turn_right
	move
	turn_right
	move
	until any_beepers_in_beeper_bag? == false
		put_beeper
	end
end

def ramasse_fleurs
	turn_around
	move
	until next_to_a_beeper?
		move
	end
	60.times do
		pick_beeper
	end
	turn_around
	move
	turn_right
	move
	turn_right
	until next_to_a_beeper?
		move
	end
end

def nouvelles_fleurs
	x = 0
	until x == 2
		x = 0
		if next_to_a_beeper? == false
			put_beeper
		end
		turn_right
		if front_is_clear?
			move		
		else 
			turn_left
			if front_is_clear?
				move
			else
				turn_left
				if front_is_clear?
					turn_left
				end
			end
		end
		until next_to_a_beeper? == false
			pick_beeper
			x = x + 1
		end
	end
	if x==2
		put_beeper
		put_beeper
		x = 0
	end
end

def jardin
	commence
	fleurs_mortes
	prochaine_mur
	fleurs_mortes
	depose_fleurs_mortes
	ramasse_fleurs
	nouvelles_fleurs
	prochaine_mur
	nouvelles_fleurs
end


end

