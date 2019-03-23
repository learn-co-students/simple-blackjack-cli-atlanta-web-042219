require_relative 'deck'
require_relative 'playing_card'
require_relative 'player'
require_relative 'gameplay'

require 'pry'

def turn_play(player, game)
  player_score = player.score(player.hand, player)
  game.game_over?(player_score, player)
  player_score
end

puts "What is your name?"
user_name = gets.chomp
player1 = Player.new(user_name)
player2 = Player.new('Dealer')
game = Blackjack.new([player1, player2])
game.initial_display
game.initial_deal
game.player_hand_display(player1)
while player1.turn?
  player_1_score = turn_play(player1, game)
  game.hit?(player1) if player1.turn == true
end
puts ""
game.player_hand_display(player2)
while player2.turn?
  player_2_score = turn_play(player2, game)
  game.score_interpreter(player_2_score, player2,player_1_score) if player2.turn == true
end
game.winner?(player_1_score, player_2_score, player1, player2)
