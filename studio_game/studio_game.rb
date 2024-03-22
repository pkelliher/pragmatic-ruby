class Player
  attr_accessor :name
  attr_reader :health
  
  def score
    @health + @name.length
  end

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{@score}"
  end

  def boost
    @health += 15
  end

  def drain
    @health -= 10
  end
end

player_1 = Player.new("finn", 60)

number_rolled = rand(1..6)

case number_rolled
when 1..2
  player_1.drain
  puts "#{player_1.name} got drained."
when 3..4
  puts "#{player_1.name} was skipped."
else
  player_1.boost
  puts "#{player_1.name} got a boost."
end
# puts player_1
# puts player_1.health

# player_2 = Player.new("lucy", 90)
# puts player_2
# puts player_2.health

# player_3 = Player.new("jase")
# puts player_3
# puts player_3.health

# player_4 = Player.new("alex", 125)
# puts player_4
# puts player_4.drain
# puts player_4
# puts player_4.boost
# puts player_4
# puts player_4.health
# player_4.name = "Alexander"
# puts player_4.name