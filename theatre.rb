class Theatre
  attr_accessor :name, location:, time: address:

  @@all = []

  def initialize(theatre_hash)
    theatre_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

   def self.all
     @@all
   end
 end
   
