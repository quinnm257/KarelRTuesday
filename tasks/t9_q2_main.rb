#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "ecrire_h_robot"
require_relative "ecrire_e_robot"
require_relative "ecrire_l_robot"
require_relative "ecrire_o_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  karel1 = EcrireHRobot.new(3, 2, INFINITY)
  karel2 = EcrireERobot.new(3, 9, INFINITY)
  karel3 = EcrireLRobot.new(3, 13, INFINITY)
  karel4 = EcrireLRobot.new(3, 17, INFINITY)
  karel5 = EcrireORobot.new(3, 19, INFINITY)
  karel1.ecrire_lettre
  karel2.ecrire_lettre
  karel3.ecrire_lettre
  karel4.ecrire_lettre
  karel5.ecrire_lettre

end

if __FILE__ == $0
  if $graphical
     screen = window(23, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end