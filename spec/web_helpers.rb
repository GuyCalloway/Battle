
def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Guy'
  fill_in 'player2', with: 'Russ'
  click_button 'Submit'
end
