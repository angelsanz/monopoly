require_relative 'spec_helper'


describe 'Landing on Go To Jail' do
  ABOUT_TO_LAND_ON_GO_TO_JAIL = 'Indiana Avenue'
  ABOUT_TO_PASS_OVER_GO_TO_JAIL = 'Illinois Avenue'

  it 'landing on Go To Jail ends up on Just Visiting' do
    player = TestPlayer.with_fixed_seven_movement
    player.locate(ABOUT_TO_LAND_ON_GO_TO_JAIL)

    game = Game.new(player, player)
    game.next_turn

    expect(player.where).to eq('Just Visiting')
  end

  it 'landing on Go To Jail does not change the balance' do
    player = TestPlayer.with_fixed_seven_movement
    player.locate(ABOUT_TO_LAND_ON_GO_TO_JAIL)

    game = Game.new(player, player)

    expect{ game.next_turn }.not_to change{ player.balance }
  end

  it 'passing over Go To Jail does not change the balance' do
    player = TestPlayer.with_fixed_seven_movement
    player.locate(ABOUT_TO_PASS_OVER_GO_TO_JAIL)

    game = Game.new(player, player)

    expect{ game.next_turn }.not_to change{ player.balance }
  end
end