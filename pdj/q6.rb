

valeurs = Array.new(200) { rand(0..100) }

x = 0
y = 0
valeurs.each do |b|
	if valeurs.count(b) > x
		x = valeurs.count(b)
		y = b
	end
end

puts y
