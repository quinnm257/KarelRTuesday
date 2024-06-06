
puts "Jusqu'a quelle nombre veux-tu generer les nombre premiers?"
valeur = gets.chomp.to_i
arr = []

def prime?(a)
	(2..a).each do |i|
		until a == i
			if a % i == 0 
				return false
			end
		end
	end
	return true
end

(1..valeur).each do |a|
  if prime?(a)
  	arr << a
  end
end

puts "les nombres primes sont: #{arr}"




