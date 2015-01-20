# Method name: count_in_list(list, item_to_count)
# Inputs:      1. a list of anything, 2. an item for us to count in the list
# Returns:     The number of times our item is contained in the input list
# Prints:      Nothing
#
# For example,
#   count_in_list([1,2,3], 1)  == 1
#   count_in_list([1,2,3], -1) == 0
#   count_in_list([1,1,1], 1)  == 3

# --- NOTE ---
# Ruby has a built-in method to do this, but the purpose of this kata is
# to write it yourself.
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-count

def count_in_list(list, item_to_count)
  # You'll need three things:
  #  1. A running total of the number of times you've seen the item
  #  2. A way to loop/iterate through the list
  #  3. A way to add to the running total as you see the item
  running_total = 0  #tracks the number of times the item appears
  list.each do |item|  #checks each item to see if it matches item_to_count
    if item == item_to_count
      running_total += 1
    end
  end

  return running_total
end

if __FILE__ == $0
  p count_in_list([7, 4, 3, 7, 6, 44, 7], 7) == 3
  p count_in_list(["one", "two", "three", 1, 2, "three", "now", "you're",
    "doing a waltz!"], "three") == 2
end
