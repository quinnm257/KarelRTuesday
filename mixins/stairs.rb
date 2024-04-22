#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

module Stairs

def turn_right
    turn_left
    turn_left
    turn_left
  end
  
  def turn_around
    turn_left
    turn_left
  end

def stair_left
    turn_left
    move
    turn_right
    move
  end

def stair_right
    turn_right
    move
    turn_left
    move
  end

end