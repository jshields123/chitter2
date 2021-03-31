# frozen_string_literal: true

require 'pg'

class Tweet
  def self.create(content:)
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'chitter2_test')
                 else
                   PG.connect(dbname: 'chitter2')
                 end
    result = connection.exec("INSERT INTO tweets (content) VALUES('#{content}');")
  end

  def self.all
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'chitter2_test')
                 else
                   PG.connect(dbname: 'chitter2')
                 end
    result = connection.exec('SELECT * FROM tweets;')
    result.map { |tweet| tweet['content'] }
  end
end
