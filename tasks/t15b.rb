
matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

puts "question 1"
puts matrice1.sum 

puts "question 2"
puts matrice1.sum/matrice1.length 

puts "question 3"
puts matrice1.take(5).sum + matrice2.reverse.take(5).sum

puts "question 4"
x = 0
until x == matrice1.length
	puts matrice1[x]+matrice2[x]
	x = x + 1
end

puts "question 5"
x = 0
until x == matrice1.length
	puts matrice1[x]+matrice2.reverse[x]
	x = x + 1
end

puts "question 6"
puts (matrice1 + matrice2).uniq.sort

