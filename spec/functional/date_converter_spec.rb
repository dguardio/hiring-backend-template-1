require 'spec_helper'
require 'date_converter'
RSpec.describe DateConverter do
    describe 'Convert dates from yyyy-mm-dd to mm/dd/yyyy' do
        let(:date) { '1947-05-04' }
        let(:converter) { DateConverter.new }
        it 'returns a string of input date converted' do
            # expect(reader.read(filepath)).to eq(["city", "birthdate", "last_name", "first_name"])
            expect(converter.convert(date)).to eq('5/4/1947')
        end
   end
end
