#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t11_q4_robot"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")
  karel = T11Q4Robot.new(2, 2, Robota::NORTH, INFINITY)
  karel.sweep

end

if __FILE__ == $0
  if $graphical
     screen = window(13, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end