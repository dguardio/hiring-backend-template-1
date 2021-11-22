require 'spec_helper'
require 'file_reader'
RSpec.describe FileReader do
    describe 'read and split text files by special characters' do
        let(:filepath) do 
            {
            dollar_format: File.read('spec/fixtures/people_by_dollar.txt'),
            percent_format: File.read('spec/fixtures/people_by_percent.txt'),
            order: :first_name
            }
        end
        let(:reader) { FileReader.new }
        it 'returns an array of split words from each line' do
            # expect(reader.read(filepath)).to eq(["city", "birthdate", "last_name", "first_name"])
            expect(reader.read(filepath)).to be_a(Array)
        end
   end
end
