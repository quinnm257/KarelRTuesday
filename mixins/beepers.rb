#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../mixins/turner"

module Beepers

include Turner

def put_move
  move
  put_beeper
end
  
def place_7
  put_move
  put_move
  put_move
  put_move
  put_move
  put_move
  put_move
end

def put_3
  put_beeper
  put_beeper
  put_beeper
end

def put_5
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
end

def two_stair_right
move
move
turn_right
move
end

def two_stair_left
move
move
turn_left
move
end

end