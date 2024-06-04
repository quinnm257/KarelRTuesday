

valeurs = array = (1..100).to_a
valeurs.delete(rand(0..99))


x = 0
missing = nil 

99.times do 
	x = x + 1
	if valeurs.include?(x) == false
		missing = x
	end
end

puts missing
 

