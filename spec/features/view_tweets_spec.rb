feature 'View tweets' do
    scenario 'A user can see tweets' do
        visit('/tweets')

        expect(page).to have_content 'This is a tweet'
    end
end