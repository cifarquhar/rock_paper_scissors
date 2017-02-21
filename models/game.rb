class Game

  def initialize(hand1,hand2)
    @array = [hand1,hand2]
  end


def get_winner()
  if @array.include?("rock") && @array.include?("scissors")
     "Rock wins!"
  elsif @array.include?("scissors") && @array.include?("paper")
    "Scissors win!"
  elsif @array.include?("paper") && @array.include?("rock")
     "Paper wins!"
  elsif @array[0] == @array[1]
     "Draw!"
  else
     "Something's gone wrong..."
  end
end


# test_array = Game.new(4,4)

# puts test_array.get_winner


end