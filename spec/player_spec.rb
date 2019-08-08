require 'player'

describe 'player class works' do
  it 'recieves name and has method that can be called' do
  player1 = Player.new("Guy")
  expect(player1.name).to eq("Guy")
end

  it 'recieves name and has method that can be called' do
  player1 = Player.new("Guy")
  player1.damage
  expect(player1.health).to eq(90)
  end
end
