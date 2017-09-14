inst_section = {
	'cello' => 'string',
	'clarinet' => 'woodwind',
	'drum' => 'percussion',
	'oboe' => 'woodwind',
}

puts inst_section.inspect

p inst_section['drum'] # return nil by default
p inst_section['piano']

# default value for hash
marks = Hash.new(0)

marks['english'] = 100

p marks['english']
p marks['history']