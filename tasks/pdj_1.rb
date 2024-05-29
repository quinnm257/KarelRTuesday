
puts "nombre de secondes?"
i = gets.chomp.to_i
secondes = i%60
minutes = i/60
heures = minutes/60
if minutes>=60 
	minutes = minutes%60
end
puts "#{heures} heures, #{minutes} minutes, #{secondes} secondes"


until i == 0
	puts "nombre de secondes?"
	i = gets.chomp.to_i
	secondes = i%60
	minutes = i/60
	heures = minutes/60
	if minutes>=60  
		minutes = minutes%60
	end
	puts "#{heures} heures, #{minutes} minutes, #{secondes} secondes"
end
 


