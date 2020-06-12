class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  accepts_nested_attributes_for :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

   def artist_name
      self.artist ? self.artist.name : nil
      # ? ternary
      # this code works too = artist.try(:name). Try is a public method invoking the method identified by the symbol.
   end
end
