require 'pry'
class TheatreListingController

  def call
    input = ""
    while input != "exit"
      puts "Welcome to your theatre directory!"
      puts "Please enter your zip code:"
    input = gets.strip
  end

  def list_theatres
    Theatre.all.sort {|a,b| a.name <=> b.name}.each.with_index(1) do |theatre, index|
    puts "#{index}. #{theatre.name}."
  end

  def list_movies
    input = ""
    puts "Please select a theatre:"
    input = gets.strip.to_i
      if Theatre.all.sort {|a, b| a.name <=> b.name}.length >= input && input > 0
        theatre = Theatre.all.sort {|a, b| a.name <=>}[input-1]
        theatres = Theatre.all.sort {|a, b| a.name <=> b.name}.length
      if  theatres >= input && input > 0
        theatre = theatres[input-1]
      end
    end
  end
