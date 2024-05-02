require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

class QuizQ1Robot < UrRobot
include Turner

def put_move
	put_beeper
	move
end

def put_3
	put_move
	put_move
	put_move
end

def put_5
	put_3
	put_move
	put_move
end

def put_7
	put_5
	put_move
	put_move
end

def u_turn_left
	turn_left
	move
	turn_left
	move
end

def u_turn_right
	turn_right
	move
	turn_right
	move
end

def rows_of3
	put_3
	u_turn_right
	put_3
	u_turn_left
	put_3
	u_turn_right
	put_3
end

def christmas_bell
	move 
	move
	move
	move
	move
	put_move
	move
	move
	move
	u_turn_left
	put_7
	u_turn_right
	move
	put_5
	u_turn_left
	move
	rows_of3
	u_turn_left
	move
	put_move
end

end
