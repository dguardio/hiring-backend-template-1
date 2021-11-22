require 'spec_helper'
require 'city_unabbreviator'
RSpec.describe CityUnabbreviator do
    describe 'unabbreviate city names' do
        let(:city) { 'NYC' }
        let(:unabbreviator) { CityUnabbreviator.new }
        it 'returns a string of unabbreviated city name' do
            # expect(reader.read(filepath)).to eq(["city", "birthdate", "last_name", "first_name"])
            expect(unabbreviator.unabbreviate(city)).to eq('New York City')
        end
    end
end