

$graphical = true


require_relative "t16_q1_robot"


def task()
  world = Robota::World
  world.read_world("../worlds/rectangle.kwld")
  karel = T16Q1Robot.new(2, 2, Robota::EAST, INFINITY)
  karel.rectangle
 
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