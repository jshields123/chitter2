feature 'View tweets' do
    scenario 'A user can see tweets' do
        connection = PG.connect(dbname: 'chitter2_test')

        connection.exec("INSERT INTO tweets VALUES(1, 'This is a tweet');")

        visit('/tweets')

        expect(page).to have_content 'This is a tweet'
    end
end