#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
require_relative "../mixins/turner"

module PlaceBeepers

include Turner

def put_move 
  put_beeper
  move
end

def put_4
  put_move
  put_move
  put_move
  put_move
end

def put_5
  put_move
  put_move
  put_move
  put_move
  put_move
end
  
end