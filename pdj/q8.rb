

valeurs = Array.new(200) { rand(0..100) }

puts "donne un mot"
mot = gets.chomp 

puts "donne un lettre"
lettre = gets.chomp

if mot.include? lettre
	puts "ce mot contient ce lettre"
else 
	puts "ce mot ne contient pas ce lettre"
end