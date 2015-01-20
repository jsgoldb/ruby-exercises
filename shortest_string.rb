# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  shortest_so_far = list.first
  list.each do |item|                        #find the shortest
    if shortest_so_far.length > item.length  # string in the list
      shortest_so_far = item
    end
  end
    return shortest_so_far                   # return the shortest string
end

if __FILE__ == $0
  p shortest_string["Here's", "another", "one", "of those", "test",
    "things"] == "of those"
  p shortest_string["that", "seem", "to be so", "important"] == "important"
  p shortest_string["but what about", "this kind of  ", "case"]
    == "but what about"
end
