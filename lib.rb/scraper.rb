require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_theatre_page(https://www.fandango.com/75230_movietimes?mode=general&q=75230)
  scraped_theatres = []
  html = open(https://www.fandango.com/75230_movietimes?mode=general&q=75230)
  doc = Nokogiri::HTML(html)
  binding.pry
end
end 
