require 'player'

describe 'player class works' do
  it 'recieves name and has method that can be called' do
  player1 = Player.new("Guy")
  expect(player1.name).to eq("Guy")
end
end
