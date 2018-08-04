class Scraper

  FIRST_PART_URL = "https://www.fandango.com/"
  SECOND_PART_URL = "_movietimes?mode=general&q="



  def self.scrape_theater_page(zipcode)
    #full_url = FIRST_PART_URL + zipcode + SECOND_PART_URL + zipcode
    full_url = FIRST_PART_URL + zipcode
    doc = Nokogiri::HTML(open(full_url))
    binding.pry
    doc.css(".fd-theater_name-wrap").each do |name|

    theater_name = name.css(".fd-theater_name-wrap a")
    doc.css(".fd-theater_address-wrap").each do |address|
    theater_address = address.css(".fd-theater_address-wrap span")
    TheaterDirectory::Theater.new(theater_name, theater_address)
    end
   end
  end

  def self.scrape_movie_details(theater)
    doc.css(".fd-movie_details").each do |movie|
      movie_title = movie.css(".fd-movie_title a")
      movie_showtimes = movie.css(".fd-movie_details ")
    end
  end
end

#theater_name.css(".fd-theater_name-wrap a").text
