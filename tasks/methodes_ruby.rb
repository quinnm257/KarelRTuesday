

#question 1
def somme(a,b)
	a+b
end

puts somme(4,6)

#question 2
def plus_petit(a,b)
	if a > b 
		b
	else
		a
	end
end

puts plus_petit(3,10)

#question 3
def moyenne(a)
	moyenne = a.sum/a.length
end

puts moyenne([50,25,25,100,75])

#question 4
def plusgrand_pluspetit (a)
	x = {max:a.max,min:a.min}
end

puts plusgrand_pluspetit([2,4,7,3,66,8,4,1,77,99])

#question 5
def somme_hachage(a)
	a.sum
end

puts somme_hachage([10,20,10,40])

#question 6
def nombre_characteres(a)
	x = 0
	a.each do |b|
		x = x +	b.length
	end
	x
end

puts nombre_characteres(["patate", "poire", "pomme"])