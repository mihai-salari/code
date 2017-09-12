#!/bin/bash

# Variable-slicing syntax lets you specify substrings in a string, 
# starting from an offset and continuing up to the given length (returning
# the entire rest of the string if no length is provided)

var="hello world is a big big world"
echo ${var:1}
echo ${var:1:4}