require 'tweet'

describe Tweet do
    describe '.all' do
        it 'returns all tweets' do
            connection = PG.connect(dbname: 'chitter2_test')

            connection.exec("INSERT INTO tweets (content) VALUES ('This is a tweet');")
            tweets = Tweet.all

            expect(tweets).to include('This is a tweet')
        end
    end
end