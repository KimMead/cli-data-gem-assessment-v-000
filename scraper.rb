require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_theatre_page(index_url)
    scraped_theatres = []
    html = open(index_url)
    doc = Nokogiri::HTML(html)

  end

  def self.scrape_movie_detail_page(profile_url)
    scraped_theatres = {}

  end
end
