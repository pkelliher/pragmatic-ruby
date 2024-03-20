class Movie
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
puts movie_1
movie_1.thunmbs_up
puts movie_1
movie_1.thunmbs_up
puts movie_1

movie_2 = Movie.new("ghostbusters", 9)
puts movie_2
movie_2.thunmbs_down
puts movie_2

movie_3 = Movie.new("goldfinger")
puts movie_3