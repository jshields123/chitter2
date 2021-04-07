# frozen_string_literal: true

feature 'View chitter' do
  scenario 'visiting index page' do
    visit('/')
    expect(page).to have_content 'chitter'
  end
end
