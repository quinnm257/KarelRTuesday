

require_relative "ecrire_h_robot"
require_relative "ecrire_e_robot"
require_relative "ecrire_l_robot"
require_relative "ecrire_o_robot"

class Gerant

def tache
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

end

