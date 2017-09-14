name = "foo bar"

if name =~ /foo/
	puts "Pattern matched"
	name = name.sub(/foo/, 'moo')
else
	puts "No pattern found"	
end

puts name