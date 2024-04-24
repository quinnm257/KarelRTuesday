#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t8_q3_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  karel1 = T8Q3Robot.new(1, 1, Robota::NORTH, 1, :red)
  karel2 = T8Q3Robot.new(1, 1, Robota::NORTH, 0, :blue)
  karel3 = T8Q3Robot.new(6, 1, Robota::EAST, 0, :yellow)
  karel4 = T8Q3Robot.new(6, 6, Robota::SOUTH, 1, :green)
  karel5 = T8Q3Robot.new(1, 6, Robota::WEST, 1, :purple)
  karel1.give_beeper
  karel3.pick_give
  karel4.pick_give
  karel5.pick_give
  karel2.pick_give
  karel1.pick_give
  karel3.pick_give
  karel4.pick_give
  karel5.pick_give
  karel2.pick_give
  karel1.pick_give
  karel3.pick_give
  karel4.pick_give
  karel5.pick_give
  karel2.pick_give
  karel1.pick_give
  karel3.pick_give
  karel4.pick_give
  karel5.pick_give
  karel2.pick_give


end

if __FILE__ == $0
  if $graphical
     screen = window(11, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end