#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../mixins/turner"

module Grinch
include Turner

def pick_beeper
  super
  super
end

def put_all_beepers
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper 
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper 
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper
  put_beeper 
end


def prend_cadeau
  move
  move
  turn_right
  move
  turn_left
  move
  move
  pick_beeper
  turn_right
  move
  pick_beeper
  turn_around
  move
  turn_left
  move
  move
  turn_right
  move
  turn_left
  move
  move
end

def prochaine_cadeau
  turn_right
  move
  move
  move
  turn_right
end

def move6
  move
  move
  move
  move
  move
  move
end

def move9
  move6
  move
  move
  move
end

   
end