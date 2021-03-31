require 'pg'

class Tweet 
    def self.all
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'chitter2_test')
        else
            connection = PG.connect(dbname: 'chitter2')      
        end
        result = connection.exec("SELECT * FROM tweets;")
        result.map { |tweet| tweet['content']}
    end
end