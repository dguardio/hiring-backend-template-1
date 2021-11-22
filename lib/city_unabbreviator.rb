class CityUnabbreviator
    def unabbreviate(city)
        # TODO: Implement a hash of abbreviations and unabbreviations
        # Currently use specific expected city abbreviations and unabbreviations
        case city
        when 'NYC'
            'New York City'
        when 'LA'
            'Los Angeles'
        when 'ATL'
            'Atlanta'
        when 'New York'
            'New York City'
        else
            city
        end
    end
end