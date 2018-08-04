class CLI

  def start
    input = ""
    while input != "exit"
    puts "Welcome to your theater directory!"
    puts ""
    puts "Please enter your 5 digit zip code:"
    input = gets.strip
      if input.length <= 5
        Scraper.scrape_theater_page(input)
      else puts "Please try again:"
  end
end
end

  def list_theaters(input)
    puts "Here is a list of all of the theaters in your area:"
    puts ""

    theaters = TheaterDirectory::Theater.all

    theaters.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |theater, index|
      puts "#{index}. #{theater.name}"

    puts "Please select a theater to view movies and showtimes:"
    input = gets.strip
    index = input.to_i -1

    theater = TheaterDirectory::Theater.all[index]

    TheaterDirectory::Scraper.scrape_movie_details(theater)

    Movie.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.name}"
    end
  end
end
end
