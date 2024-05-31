
notes = Array.new(200) { rand(20..100) }
moyenne = 0
notes.each do  |a|
	moyenne = moyenne + a
end
moyenne = moyenne/notes.length

puts "la moyenne est #{moyenne}"


