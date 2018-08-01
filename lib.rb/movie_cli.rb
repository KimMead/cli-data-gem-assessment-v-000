require_relative "../lib/scraper.rb"
require.relative "../lib/theatre.rb"
require 'pry'
require 'nokogiri'

class TheatreListingController
  BASE_PATH = https://www.fandango.com/+ zip_movietimes?mode=general&q= + zip
  ZIP = ^\d{5}$

def call
  input = ""
  while input != "exit"
    puts "Welcome to your theatre directory!"
    puts "Please enter your 5 digit zip code:"
    input = gets.strip
      if input.length = 5
      else
        puts "Please try again:"

  def list_theatres(zip)
    Theatre.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |theatre, index|
      puts "#{index}. #{theatre.name}"
    end
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

  def list_movies
    Movie.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.name}"
    end
  end

  end
