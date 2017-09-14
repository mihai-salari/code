require_relative 'ex40_mystuff_module' # When you import a module, there is only one for the entire program
require_relative 'ex40_mystuff_class'

mystuff = {
  'apple' => "I am Apple!"
}

puts mystuff['apple']

MyStuff.apple()
puts MyStuff::TANGERINE

thing = MyStuffClass.new()
thing.apple()
puts thing.tangerine