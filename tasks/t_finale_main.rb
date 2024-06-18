

$graphical = true

require_relative "t_finale_robot"

def task()
  world = Robota::World
  world.read_world("../worlds/tache_finale_b.kwld")  
  karel = TFinaleRobot.new(1, 1, Robota::NORTH, 0)
  karel.tache
end

if __FILE__ == $0
  if $graphical
     screen = window(14, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end