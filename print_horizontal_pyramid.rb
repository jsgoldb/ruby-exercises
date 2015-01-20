# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******

def print_horizontal_pyramid(height)
  num_spaces = height - 1 #keeps track of the number of spaces to print before
                          # each row of the pyramid
  num_asterisks = 1 #keeps track of the number of asterisks to print

  (1..height).each do |i|       #prints each row of the pyramid
    print " " * num_spaces
    print "*" * num_asterisks

    print "\n"
    num_spaces -= 1     #adjusts the number of spaces and asterisks
    num_asterisks += 2  # for the next row of the pyramid
  end
end

if __FILE__ == $0
  print_horizontal_pyramid(5)
end
