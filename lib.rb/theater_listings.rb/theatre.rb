class Theatre
  attr_accessor :name, address:

  @@all = []

  def initialize(theatre_hash)
    @name = name
    @address = address
    @@all << self
  end

   def self.all
     @@all
   end
 end
