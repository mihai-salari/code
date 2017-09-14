answer = ""

while answer = gets
	puts answer

	answer = answer.chomp() # remove newline

	#if answer.eql?("exit")
	if answer == "exit"
		puts "exiting..."
		break
	end
end