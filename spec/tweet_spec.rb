require 'tweet'

describe Tweet do
    describe '.all' do
        it 'returns all tweets' do
            tweets = Tweet.all

            expect(tweets).to include('This is a tweet')
        end
    end
end