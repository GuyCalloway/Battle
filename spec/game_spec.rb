require 'game'

describe Game do
  it "has attack method that can be called on Player2 that accesses receive damage method" do
    player = Player.new("Yo")
    player2 = Player.new("yo")
    game = Game.new(player, player2)
    expect(player2).to receive(:damage)
    game.attack(player2)
end

it "has attack method that can be called on Player that accesses receive damage method" do
  player = Player.new("Yo")
  player2 = Player.new("yo")
  game = Game.new(player, player2)
  expect(player).to receive(:damage)
  game.attack(player)
end

end
