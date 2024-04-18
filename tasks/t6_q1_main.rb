#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t6_q1_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  karel = T6Q1Robot.new(1, 5, Robota::NORTH, 10)
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