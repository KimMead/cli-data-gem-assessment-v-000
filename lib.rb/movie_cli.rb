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

  def list_theatres
    Theatre.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |theatre, index|
      puts "#{index}. #{theatre.name}"
    end
  end

  def list_movies
    Movie.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.name}"
    end
  end

  end
