

$graphical = true


require_relative "t16_q3_robot"


def task()
  world = Robota::World
  world.read_world("../worlds/bouger.kwld")
  karel = T16Q3Robot.new(5, 2, Robota::NORTH, INFINITY)
  karel.bouge_beepers
 
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