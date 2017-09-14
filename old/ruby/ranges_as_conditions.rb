File.open("/Users/choonsiong/Public/Ruby/tmp/ipsum.txt") do |text_file|
  text_file.each do |line|
    puts line if line =~ /START/ .. line =~ /END/
  end
end