class TheaterDirectory::Theater
  attr_accessor :name, :address, :movie_title, :movie_showtime

  @@all = []

  def initialize(name, address)
    @name = name
    @address = address
    @@all << self
  end

   def self.all
     @@all
   end
 end
