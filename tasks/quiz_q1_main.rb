#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "quiz_q1_robot"

# a task for a stair sweeper
def task()
  world = Robota::World
  karel = QuizQ1Robot.new(1, 1, Robota::EAST, INFINITY)
  karel.christmas_bell

end

if __FILE__ == $0
  if $graphical
     screen = window(11, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end