class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    @lyrics.each do |line|
      puts line
    end
  end
end

happy_bday = Song.new(["Happy Birthday to you", "I don't want to get sued", "So I'll stop right there"])
happy_bday.sing_me_a_song()

bulls_on_parade = Song.new(["They rally around the family", "With pockets full of shells"])
bulls_on_parade.sing_me_a_song()