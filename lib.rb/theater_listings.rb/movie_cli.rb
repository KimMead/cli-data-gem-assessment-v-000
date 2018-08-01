#!/usr/local/bin ruby
class CLI

  def start
    input = ""
    while input != "exit"
    puts "Welcome to your theater directory!"
    puts ""
    puts "Please enter your 5 digit zip code:"
    input = gets.strip
      if input.length = 5
      else puts "Please try again:"
      end
    end
  end

  def list_theaters(input)
    puts "Here is a list of all of the theaters in your area:"
    puts ""
    Theater.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |theater, index|
      puts "#{index}. #{theater.name}"

    puts "Please select a theater to view movies and showtimes:"
    input = gets.strip.to_i

    Movie.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.name}"




  
