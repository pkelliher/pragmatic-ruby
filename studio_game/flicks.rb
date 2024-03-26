class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end

  def thunmbs_up
    @rank += 1
  end

  def thunmbs_down
    @rank -= 1
  end
end

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

puts "\nBefore watching:"
puts movies

movies.each do |movie|
  number_rolled = rand(1..6)

  case number_rolled
  when 1..2
    movie_1.thunmbs_down
    puts "#{movie.title} got a thumbs down."
  when 3..4
    puts "#{movie.title} was skipped."
  else
    movie_1.thunmbs_up
    puts "#{movie.title} got a thumbs up."
  end
end

puts "\nAfter watching:"
puts movies