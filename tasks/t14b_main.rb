

$graphical = true


require_relative "t14_b_robot"


def task()
  world = Robota::World
  world.read_world("../worlds/labyrinthe.kwld")
  karel = T14BRobot.new(19, 2, Robota::SOUTH, 0)
  karel.labyrinth
end

if __FILE__ == $0
  if $graphical
     screen = window(20, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end