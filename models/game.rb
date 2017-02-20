class Game

  def initialize(hand1,hand2)
    @array = [hand1,hand2]
  end


def get_winner(hands)
  if hands.include?("rock") && hands.include?("scissors")
     "Rock wins!"
  elsif hands.include?("scissors") && hands.include?("paper")
    "Scissors win!"
  elsif hands.include?("paper") && hands.include?("rock")
     "Paper wins!"
  elsif hands[0] == hands[1]
     "Draw!"
  else
     "Something's gone wrong..."
  end
end


test_array = [4,4]

return get_winner(test_array)


end