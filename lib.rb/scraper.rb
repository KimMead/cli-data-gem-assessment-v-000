require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_theatre_page(https://www.fandango.com/75230_movietimes?mode=general&q=75230)
    scraped_theaters = []
    html = open(https://www.fandango.com/75230_movietimes?mode=general&q=75230)
    doc = Nokogiri::HTML(html)
    doc.css(".fd-theater_name-wrap").each do |theater|
      theater_name = theater.css(".theater-name")
      theater_address = theater.css(".theater-address")
      scraped_theaters << {name: theater_name, address: theater_address}
  #theatre.name = div class="fd-theater_name-wrap"
    #theatre.address = div class="fd-theater_address-wrap"
    end
    scraped_theatres
  end

  def self.scrape_movie_detail_page(https://www.fandango.com/studio-movie-grill-dallas-AAUTC/theater-page?mode=general&q=75230)
    scraped_theater = {}
    html = open(https://www.fandango.com/studio-movie-grill-dallas-AAUTC/theater-page?mode=general&q=75230)
    doc = Nokogiri::HTML(html)
    doc.css(".fd-movie_title").each do |movie|
      movie_name = movie.css(".movie-title")
      movie_showtimes = movie.css(".movie-showtimes")
      scraped_theater
    #movie.name = h3 class="fd-movie_title"
      #movie.times = li class="fd-movie_showtimes-variant"
  end
end
