class Listing
  attr_accessor :url, :company, :title, :type, :location
  def initialize(url, company, title, type, location)
    @url = url
    @company = company
    @title = title
    @type = type
    @location = location
  end
end
