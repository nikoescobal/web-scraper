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