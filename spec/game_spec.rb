require 'game'

describe Game do
  it "has attack method that can be called on Player that accesses receive damage method" do
    player = Player.new("Yo")
    expect(player).to receive(:damage)
    subject.attack(player)
end
end
