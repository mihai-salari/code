# In Ruby 1.9, double-quoted strings can include arbitrary Unicode characters with \u
# escapes.

# \u is followed by exactly four hexadecimal digits, which represent a Unicode codepoint
# between 0000 and FFFF.
puts "\u00D7" # leading zeros cannot be dropped
puts "\u20AC"

# \u{ is followed by one to six hexadecimal digits, which represent any Unicode codepoint
# between 0 and 10FFFF/, and leading zeros can be dropped in this form.
puts "\u{A5}"
puts "\u{3C0}"
puts "\u{10FFFF}"

# \u{} form allows multiple codepoints to be embedded within a single escape.
puts "\u{49 20 1F60D 20 59 4F 55}"
puts "\u{1F600 1F602 1F60D}" # without spaces

=begin

Strings that use the \u escape are encoded using the Unicode UTF-8 encoding.

If the source file uses an encoding other than UTF-8, and a string contains multibyte
characters in that encoding (literal characters, not characters created with escapes),
then it is not legal to use \u in that string.

You can always use \u if the source encoding is UTF-8. And you can always use \u
in a string that only contains ASCII characters.

\u escapes may appear in double-quoted strings, and also in other forms of quoted
text such as regular expressions, characters literals, %- and %Q-delimited strings,
%W-delimited arrays, here documents, and backquote-delimited command strings.

Ruby's \u escape can only appear in quoted text, not in program identifiers.

=end