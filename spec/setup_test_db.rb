require 'pg'

def setup_test_db

connection = PG.connect(dbname: 'chitter2_test')

connection.exec('TRUNCATE tweets;')
end