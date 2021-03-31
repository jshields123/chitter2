feature 'create tweet' do
    scenario 'to let people know what is happening, I want to tweet' do
        visit('/tweet/create')
        fill_in 'tweet', with: 'This ia a tweet'
        click_button 'Create tweet'
        expect(page).to have_content 'This is a tweet'
    end
end