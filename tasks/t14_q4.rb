
x = rand(1..100)
matrice = []
puts x

puts "Devinez le nombre entre 1 et 100"
i = gets.chomp.to_i

until i == x
matrice << i
i = gets.chomp.to_i
end


puts "#{x} est la bonne reponse, vous avez devinez #{matrice.length} fois"

