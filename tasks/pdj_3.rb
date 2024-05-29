

noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]

nom = gets.chomp.to_s  
if noms.include?(nom)
	puts "present"
else
	puts "absent"
end

until nom == "q" 
	noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]
	nom = gets.chomp.to_s  
	if noms.include?(nom)
		puts "present"
	else
		puts "absent"
	end
end

