
nombres =  Array.new(200) { rand(1..100) }

puts "Entrez une valeur entre 1 et 100"
valeur = gets.chomp.to_i

x = 0
y = 0
z = 0

nombres.each do |a|
	if a > valeur
		 x = x + 1
	elsif a < valeur
		y = y + 1
	elsif a == valeur 
		z = z + 1
	end
end

puts "#{x} valeurs sont supérieures à #{valeur}"
puts "#{y} valeurs sont inférieures à #{valeur}"
puts "#{z} valeurs sont égales à #{valeur}"


