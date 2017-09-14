birthyear = 1990

generation = case birthyear
when 1946..1963
  "Baby boomer"
when 1964..1976
  "Generation X"
when 1977..2000
  "Generation Y"
when 2001..2020
  "Aliens"
else
    nil
end

p generation

def are_you_sure?
  while true
    print "Are you sure? [y/n]: "
    response = gets
    
    case response
    when /^[yY]/
      return true
    when /^[nN]/, /^$/
      return false
    end
  end
end

p are_you_sure?