
x = rand(0..50)
y = rand(0..50)

puts "Quelle est la somme de #{x} + #{y}"
i = gets.chomp.to_i

until i == (x + y)
	puts "Ce n'est pas la bonne reponse, essaie encore."
	i = gets.chomp.to_i
end

puts "C'est la bonne reponse!"
