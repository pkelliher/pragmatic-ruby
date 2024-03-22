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

number_rolled = rand(1..6)

case number_rolled
when 1..2
  movie_1.thunmbs_down
  puts "#{movie_1.title} got a thumbs down."
when 3..4
  puts "#{movie_1.title} was skipped."
else
  movie_1.thunmbs_up
  puts "#{movie_1.title} got a thumbs up."
end

# puts movie_1.title
# movie_1.title = "goonyes"
# puts movie_1.title
# puts movie_1.rank

# puts movie_1
# movie_1.thunmbs_up
# puts movie_1
# movie_1.thunmbs_up
# puts movie_1

# movie_2 = Movie.new("ghostbusters", 9)
# puts movie_2
# movie_2.thunmbs_down
# puts movie_2

# movie_3 = Movie.new("goldfinger")
# puts movie_3