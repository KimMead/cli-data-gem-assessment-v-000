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

  end
