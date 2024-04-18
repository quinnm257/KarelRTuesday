#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t6_q2_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/t6_q2_world")
  karel = T6Q2Robot.new(1, 6, Robota::NORTH, 10)
  karel.tache

end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end