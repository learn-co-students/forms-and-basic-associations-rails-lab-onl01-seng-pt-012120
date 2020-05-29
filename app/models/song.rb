class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name
  	self.genre ? self.genre.name : nil
  end

  def artist_name=(name)
  	self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
  	self.artist ? self.artist.name : nil
  end

  def notes=(notes_arr)
  	notes_arr.each do |note|
  		self.notes << note
  	end
  end
end
