#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../karel/ur_robot"

# a task for a stair sweeper
def task()
  karel = UrRobot.new(3, 3, Robota::NORTH, INFINITY)
  commandes = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper]
  commandes.each do |commandes|
    karel.send(commandes)
  end
end

if __FILE__ == $0
  if $graphical
     screen = window(10, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end