
valeurs = []
puts "Entrez 5 valeurs numeriques, je vais les tirer de bas a haut"
5.times do
	valeurs <<  gets.chomp.to_i
end

puts "les valeurs en ordre sont: #{valeurs.sort}"

