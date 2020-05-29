module FormHelper
	def setup_song(song)
		song.notes ||= Notes.new
		2.times { song.notes.build }
	    song
	end
end