require 'nokogiri'
require 'httparty'
require_relative './listing'
require 'progress_bar'

class Scraper
  attr_accessor :name, :url

  def initialize(name, url)
    @name = name
    @parsed_page = Nokogiri::HTML(HTTParty.get(url).body)
  end

  def get_listings
    job_listings = @parsed_page.css('li.feature')
    jobs = []
    job_listings.each do |job_listing|
      jobs << Listing.new(job_listing.css('span.company').text,
    job_listing.css('span.title').text,
    job_listing.css('span.company').text,
    job_listing.css('span.region.company').text,
    job_listing.css('a')[0].attributes["href"].value)
    end
    jobs
  end
end