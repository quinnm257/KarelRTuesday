
puts "Ecrivez un mot..."
mot = gets.chomp.to_s
a = mot.chars.to_a

if a.eql?(a.reverse)
	puts "#{mot} est une palindrome"
else
	puts "#{mot} n'est pas une palindrome"
end
