# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  longest_so_far = list[0]    #assign longest to first string in list
  list.each do |item|
    if item.length > longest_so_far.length   #check each string length to find
      longest_so_far = item                  #  the longest string
    end
  end

  return longest_so_far   #return the longest string
end

if __FILE__ == $0
  p longest_string(["Hi", "This", "is", "a", "test!"]) == "test!"
  p longest_string(["Just", "A", "Test"]) == "Just"
  p longest_string(["What", "About", "When", "There", "Are", "Two", "of",
      "equal", "size?"]) == "About"
  p longest_string(["That's", "above", "my", "pay", "grade."]) == "That's"
end
