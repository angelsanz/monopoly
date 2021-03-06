require_relative 'spec_helper'

describe 'Game Rounds' do
  it 'the game finishes after 20 rounds' do
    player = TestPlayer.avoiding_luxury_tax
    players = [player, player]
    game = Game.new(*players)
    rounds_in_a_game = 20

    rounds_in_a_game.times do
      play_round(game, players)
    end

    expect(game).to be_finished
  end

  it 'the game maintains the same order of players in every round' do
    players = [TestPlayer.not_loser, TestPlayer.not_loser]
    game = Game.new(*players)

    first_round = play_round(game, players)
    second_round = play_round(game, players)

    expect(first_round).to eq(second_round)
  end

  def play_round(game, players)
    round = []

    players.size.times do
      round << game.next_turn
    end

    round
  end
end