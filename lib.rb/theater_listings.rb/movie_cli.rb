#!/usr/local/bin ruby

require_relative "../lib/scraper.rb"
require.relative "../lib/theatre.rb"
require 'pry'
require 'nokogiri'

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

  Scraper.scrape


  def list_theaters(zip)
    Theater.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |theater, index|
      puts "#{index}. #{theater.name}"
    end
  end

  def list_movies
    input = ""
    puts "Please select a theater:"
    input = gets.strip.to_i
      if Movie.all.sort {|a, b| a.name <=> b.name}.length >= input && input > 0
        movie = Movie.all.sort {|a, b| a.name <=>}[input-1]
        theatres = Theater.all.sort {|a, b| a.name <=> b.name}.length
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
