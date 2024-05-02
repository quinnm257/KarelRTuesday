require_relative "../karel/ur_robot"
require_relative "../mixins/grinch"

class QuizQ2Robot < UrRobot
include Grinch

def go_down
	turn_left
	move9
	turn_left
	move6
	turn_left
end

def vole_cadeau
	prend_cadeau
	prochaine_cadeau
	prend_cadeau
	prochaine_cadeau
	prend_cadeau
end

def depose_cadeau
	turn_right
	move
	turn_right
	move
	move
	move
	turn_left
	move
	turn_right
	move
	move
	put_all_beepers
end

def steal_christmas
	vole_cadeau
	go_down
	move
	move
	move
	turn_right
	vole_cadeau
	depose_cadeau
	turn_around
	move
end

end
