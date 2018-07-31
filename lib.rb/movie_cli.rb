require 'pry'
class TheatreListingController

def call
  input = ""
  while input != "exit"
    puts "Welcome to your theatre directory!"
    puts "Please enter your zip code:"
    input = gets.strip
  end
  
