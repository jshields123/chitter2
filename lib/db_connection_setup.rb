require './lib/db_connection'

if ENV['ENVIRONMENT'] == 'test'
    DBConnection.setup('chitter2_test')
else
    DBConnection.setup('chitter2')
end