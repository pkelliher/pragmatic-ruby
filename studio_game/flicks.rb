# title = "Ghostbusters"
# rank = 9
# puts "#{title} has a rank of #{rank}."
# puts "Mikey's favorite movie is #{title}.\nHe gives it a #{rank}!"

def emojis(emoji = "*", number)
  emoji * number
end

def movie_info(title, rank = title.length)
  stars = emojis("*", rank)
  "#{title.capitalize} has a rank of #{rank}: #{stars}"
end

puts movie_info("goonies", 10)
puts movie_info("Ghostbusters", 9)

movie = "goldfinger"
puts movie_info(movie)