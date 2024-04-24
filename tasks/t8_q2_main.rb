#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robot_face_nord"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  karel = RobotFaceNord.new(5, 5, 0) 
  karel.square

end

if __FILE__ == $0
  if $graphical
     screen = window(11, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end