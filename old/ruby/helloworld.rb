puts "Hello, World"
puts "It is now #{Time.now}"

def say_goodnight(name)
	result = "Good night, " + name

	return result
end

puts say_goodnight("Bob")
puts say_goodnight("Helen")

# Last expression return by default
def say_goodmorning(name)
	"Good morning, #{name}"
end

puts say_goodmorning("Lee")