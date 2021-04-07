# frozen_string_literal: true

require 'pg'

feature 'View tweets' do
  scenario 'A user can see tweets' do
    connection = PG.connect(dbname: 'chitter2_test')
    Tweet.create(content: 'This is a tweet')
    visit('/tweets')
    expect(page).to have_content 'This is a tweet'
  end
  scenario 'a user can see the time of a tweet ' do
    connection = PG.connect(dbname: 'chitter2_test')
    Tweet.create(content: 'This is a tweet')
    visit('/tweets')
    expect(page).to have_content ''
  end
end
