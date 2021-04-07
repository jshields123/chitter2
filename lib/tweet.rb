# frozen_string_literal: true

require 'pg'

class Tweet
  attr_reader :id, :content, :created_at

    def initialize(id:, content:, created_at:)
        @id = id
        @content = content
        @created_at = created_at
    end

    def self.all
      connection = if ENV['ENVIRONMENT'] == 'test'
                     PG.connect(dbname: 'chitter2_test')
                   else
                     PG.connect(dbname: 'chitter2')
                   end
      result = connection.exec('SELECT * FROM tweets ORDER by created_at desc;')
      result.map { |tweet| tweet['content'] }
    end

    def self.create(content:)
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'chitter2_test')
                 else
                   PG.connect(dbname: 'chitter2')
                 end
      result = connection.exec("INSERT INTO tweets (content) VALUES('#{content}') RETURNING id, content, created_at;")
    end

  
end
