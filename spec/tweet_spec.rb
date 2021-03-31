require 'tweet'

describe Tweet do
    describe '.all' do
        it 'returns all tweets' do
            connection = PG.connect(dbname: 'chitter2_test')

            connection.exec("INSERT INTO tweets (content) VALUES ('This is a tweet');")
            connection.exec("INSERT INTO tweets (content) VALUES ('This is a second tweet');")
            tweets = Tweet.all

            expect(tweets).to include('This is a tweet')
            expect(tweets).to include('This is a second tweet')
        end

        describe '.create' do
            it 'creates a new tweet' do
            Tweet.create(content: 'This is a tweet')

            expect(Tweet.all).to include 'This is a tweet'
        end
    end
    end
end