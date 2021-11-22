class FileReader
    # Require converter classes for han dling conversion of city and date to desired formats
    require 'date_converter'
    require 'city_unabbreviator'

    # Reads the file and returns an array of lines sorted based on alphabetical order
    def read(filepath)

        # Instantiate converter classes
        line_details = []
        converter = DateConverter.new
        unabbreviator = CityUnabbreviator.new

        # Read the file and split by newline based on each format
        filepath[:dollar_format].split(/\n/).drop(1).map {
            # Split each line by non whitespacee characters except for  - 
            |line| words = line.split(/[^\w\s-]/).map {|x| x.strip}
            line_details << "#{words[3]}, #{unabbreviator.unabbreviate(words[0])}, #{converter.convert(words[1])}"
        }
        filepath[:percent_format].split(/\n/).drop(1).map {
            |line| words = line.split(/[^\w\s-]/).map {|x| x.strip}
            line_details << "#{words[0]}, #{unabbreviator.unabbreviate(words[1])}, #{converter.convert(words[2])}"
        }        

        # return sorted line to executed block
        return line_details.sort
    end
end