

valeurs = Array.new(200) { rand(0..100) }

somme = 0

valeurs.each do  |a|
	if a%2 == 0
		somme = somme + a
	end
end

puts somme
