class PeopleController
  require 'file_reader'

  def initialize(params)
    @params = params
  end

  def normalize
    fetch_text_content = FileReader.new
    return fetch_text_content.read(params)
  end

  private

  attr_reader :params
end
