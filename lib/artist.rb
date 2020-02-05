require 'pry'

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    self.save 
  end 
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    @songs << song   
  end 
  
  def songs 
    @songs
  end 
  
  def self.find_or_create_by_name(name)
    self.find(name) ?  self.find(name) : self.create(name)
  end

  def self.find(name)
    @@all.find {|artist| artist.name == name }
  end
  
  def self.create(name)
    self.new(name)
  end
  
  def print_songs
    @songs.map{|song| puts song.name}
  end 
  #binding.pry
end 