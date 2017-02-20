require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require './models/game.rb'

get '/rps/:first/:second' do
  pairing = [params[:first],params[:second]]
  if pairing.include?("rock") && pairing.include?("scissors")
    return "Rock wins!"
  elsif pairing.include?("scissors") && pairing.include?("paper")
    return "Scissors win!"
  elsif pairing.include?("paper") && pairing.include?("rock")
    return "Paper wins!"
  elsif pairing[0] == pairing[1]
    return "Draw!"
  else
    return "Something's gone wrong..."
  end
end
