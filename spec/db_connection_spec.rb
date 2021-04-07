require 'db_connection'

describe DBConnection do
    describe '.setup' do
        it 'sets up a connection to a db through PG' do
            expect(PG).to receive(:connect).with(dbname: 'chitter2_test')

            DBConnection.setup('chitter2_test')
        end
    end
    it 'executes a query via PG' do
        connection = DBConnection.setup('chitter2_test')

        expect(connection). to receive(:exec).with("SELECT * FROM chitter2;")

        DBConnection.query("SELECT * FROM chitter2;")
    end
end