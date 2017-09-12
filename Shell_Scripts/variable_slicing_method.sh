#!/bin/bash

message="hello world"

# ${var%pattern} produces a substring with everything left over once
# the specified pattern is removed from var.
echo ${message%world} # hello

# ${var#?} extracts everything but the first character of var, where #
# is a call to delete the first instance of a given pattern and ? is a
# regex that matches exactly one character.
echo ${message#?} # ello world