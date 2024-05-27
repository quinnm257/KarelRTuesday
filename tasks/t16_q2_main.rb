

$graphical = true


require_relative "t16_q2_robot"


def task()
  world = Robota::World
  world.read_world("../worlds/jardin2")
  karel = T16Q2Robot.new(16, 9, Robota::WEST, 0)
  karel.jardin
 
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

# world.read_world("../worlds/jardin2")
#karel = T16Q2Robot.new(16, 9, Robota::WEST, 0)

#world.read_world("../worlds/jardin1")
#karel = T16Q2Robot.new(17, 8, Robota::WEST, 0)