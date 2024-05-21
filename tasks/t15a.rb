
matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

puts matrice1.first #question 1
puts matrice1[0]

puts matrice1[1]+matrice2[10] #question 2

puts matrice1.max+matrice2.max # question 3
puts matrice1.sort.last+matrice2.sort.last

puts matrice1.sort.first+matrice2.sort.first #question 4

puts (matrice1+matrice2).sort.first #question 5

puts (matrice1+matrice2).sort #question 6
