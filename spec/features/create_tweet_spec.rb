# frozen_string_literal: true

feature 'create tweet' do
  scenario 'to let people know what is happening, I want to tweet' do
    visit('/tweets/new')
    fill_in 'content', with: 'This is a tweet'
    click_button 'Post tweet'
    expect(page).to have_content 'This is a tweet'
  end
end
