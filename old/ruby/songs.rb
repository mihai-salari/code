Song = Struct.new(:title, :name, :length)

File.open("/Users/choonsiong/Public/Ruby/tmp/song.txt") do |song_file|
  songs = []
  
  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    mins, secs = length.scan(/\d+/)
    songs << Song.new(title, name, mins.to_i*60 + secs.to_i)
  end
  
  puts songs[1]
end