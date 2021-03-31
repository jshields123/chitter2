require 'pg'

class Tweet 
    def self.all
        connection = PG.connect(dbname: 'chitter2')
        result = connection.exec("SELECT * FROM tweets;")
        result.map { |tweet| tweet['content']}
    end
end