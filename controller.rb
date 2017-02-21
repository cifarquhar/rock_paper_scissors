require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require_relative './models/game.rb'

get '/rps/:first/:second' do
  pairing = Game.new(params[:first],params[:second])
  @winner = pairing.get_winner
  
  # @winner = if pairing.include?("rock") && pairing.include?("scissors")
  #    "Rock wins!"
  # elsif pairing.include?("scissors") && pairing.include?("paper")
  #    "Scissors win!"
  # elsif pairing.include?("paper") && pairing.include?("rock")
  #    "Paper wins!"
  # elsif pairing[0] == pairing[1]
  #    "Draw!"
  # else
  #    "Something's gone wrong..."
  # end
  erb(:result)
end

get '/' do
  erb(:welcome)
end