require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  BASE_URL = https://www.fandango.com/

  def self.scrape_theatre_page
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css(".fd-theater_name-wrap").each do |theater|
      theater_name = theater.css(".fd-theater_name-wrap a")
    doc.css(".fd-theater_address-wrap").each do |address|
      theater_address = theater.css(".fd-theater_address-wrap")
      Theater.new(name, address)
    end
  end

  def self.scrape_movie_detail_page
    doc = Nokogiri::HTML(open(BASE_URL)
    doc.css(".fd-movie_title").each do |movie|
      movie_name = movie.css(".movie-title")
      movie_showtimes = movie.css(".movie-showtimes")
  end
end
