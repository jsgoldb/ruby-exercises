# Method name: count_max
# Inputs:      A list of numbers
# Returns:     The number of times the largest number in the list
#              appears in the list
# Prints:      Nothing
#
# For example,
#   count_max([10, 1,2,10,10]) == 3
# because "10" is the largest number in the list and it occurs 3 times

# This is how we require the max.rb and count_in_list.rb files in the current folder.
# We can now use the "max" and "count_in_list" methods we defined there — justs
# as if we had defined them here!

require_relative './max'          #Why is require_relative used here,
require_relative './count_in_list'# as opposed to require?

def count_max(list)
  max_num = max(list)                 #find the max number
  return count_in_list(list, max_num) #count the times it appears
end

if __FILE__ == $0
p count_max([4, 44, 3]) == 1
p count_max([50, 0, -50, 0, 50]) == 2
end
