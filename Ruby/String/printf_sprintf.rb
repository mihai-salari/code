# Ruby also supports printf and sprintf functions for interpolating values into strings.
# ri Kernel.sprintf

printf("pi is about %.4f\n", Math::PI)
sprintf("pi is about %.4f\n", Math::PI)

# or you can use the % operator between a format string and the arguments to be interpolated
# into it:

puts "pi is about %.4f" % Math::PI
puts "%s: %g" % ["pi", Math::PI] # array for multiple arguments