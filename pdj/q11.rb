
puts "Jusqu'a quelle nombre veux-tu generer les nombre premiers?"
valeur = gets.chomp.to_i
arr = []

def prime?(a)
	i=2
	while i < a
		if a % i == 0 
			return false
		end
		i=i+1
	end
	return true
end

(1..valeur).each do |a|
  if prime?(a)
  	arr << a
  end
end

puts "les nombres permiers sont: #{arr}"



