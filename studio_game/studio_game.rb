name = "finn"
health = 60

puts "Let's play a game!\n\n\t3\n\t2\n\t1\n\n"
puts "*" * 25
puts "#{name.capitalize}'s health is #{health}".center(50, '*')
puts "#{name.capitalize.ljust(30, ".")}#{health}health" 