# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# add Song class
# initialize class song with 2 arguments
# create a class Playlist

# Initial Solution
class Song
	attr_reader :title, :artist
	def initialize (title, artist)  
		@title = title
		@artist = artist 
	end

	def play
		puts "playing #{@title}"
	end

end	


class Playlist
	def initialize (*song)
		@playlist = song
	end

	def add (*song)
		song.each |title| @playlist << song
	end

	def num_of_tracks
		@playlist.length
	end

	def remove (song_title)
		@playlist.delete(song_title)
	end

	def includes? (song_title)
		@playlist.include?(song_title)
	end

	def play_all
		@splaylist.each {|song| song.play}
	end

	def display 
		@playlist
	end

end






# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 
# I'm having a problem figuring out what I am doing incorrectly. There must be something I might of mistyped 
# I am running into an error. The challenege itself wasn't too bad but because I couldn't figure out what I did
# wrong, I'm having some issues. 