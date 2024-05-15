

$graphical = true

require_relative "t14_robot"
require_relative "../karel/robota"


def task()
  karel = T14Robot.new(1, 1, Robota::NORTH, INFINITY)
  karel.put_beeper(10)
  karel.pick_beeper(8)
  karel.move(3)
  
end

if __FILE__ == $0
  if $graphical
     screen = window(15, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end