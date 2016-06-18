require 'pry'
class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def self.all
    @@all
  end

  def save
#self.class.all because save is an instance method
    self.class.all << self
  end

  def initialize(name)    
    @name = name
    @artist_name = artist_name
    @@all << self #self is an instance method in here
  end

#build class methods
  def self.create
  #save not recognized because it is an instance method  
    song = Song.new(song)
  end

  def self.new_by_name(name)
    song = Song.new(name)
  end

  def self.create_by_name(name)
    song = Song.new(name)    
  end

  def self.find_by_name(name)
      self.all.find { |song| name == song.name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
        create_by_name(name)        
    else
      find_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by { |names| names.name }    
  end

  def self.new_from_filename(name)
   #song = Song.new(song_name)   
    new_name = name.split(/ - |.mp3/)
    song_name = new_name[1]
    artist_name = new_name[0]
      
      song = self.new(name)
      song.name = song_name
      song.artist_name = artist_name
      song
  end

  def self.create_from_filename(name)
    new_name = name.split(/ - |.mp3/)
    song_name = new_name[1]
    artist_name = new_name[0]
      
      song = self.new(name)
      song.name = song_name
      song.artist_name = artist_name
      song
  end

  def self.destroy_all
    @@all = []
  end
end

