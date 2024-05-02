#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t11_q3_robot"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/aleatoire.kwld")
  karel = T11Q3Robot.new(2, 2, Robota::NORTH, 0)
  karel.tache

end

if __FILE__ == $0
  if $graphical
     screen = window(13, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end