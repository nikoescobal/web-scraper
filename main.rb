require 'nokogiri'
require 'httparty'
require_relative './scraper'

scraper = Scraper.new("We Work Remotely", "https://weworkremotely.com/categories/remote-programming-jobs")
# scraper.get_listings.each {|x| puts x.url}

bar = ProgressBar.new
scraper.get_listings.length.times do
  sleep 0.1
  bar.increment!
end

scraper.get_listings.each do |el|
  puts el.url
end
