# Method name: print_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_pyramid(4) should print
#
# *
# **
# ***
# ****
# ***
# **
# *

# This is how we require the print-triangle.rb file in the current folder.
# We can now use the "print_triangle" and "print_line" methods we defined
# there — as if we defined them here!

require_relative './print_triangle'

def print_pyramid(height)
  print_triangle(height)  #prints one side of pyramid

  reverse_tracker = height - 1 #keeps track of reverse side

  (1..height).each do |i| #prints other side
    print_line(reverse_tracker)
    reverse_tracker -= 1
  end
end

if __FILE__ == $0
print_pyramid(5)

print "\n\n\n"

print_pyramid(4)

print "\n\n\n"

print_pyramid(1)

print "\n\n\n"

print_pyramid(2)

print "\n\n\n"

end
