class DateConverter
    require 'date'
    def convert(date)
        # Convert date to mm/dd/yyyy format by parsing string date first
        new_date = Date.parse(date)
        return new_date.strftime("%-m/%-d/%Y")
    end
end