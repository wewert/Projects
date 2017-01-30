require 'pry'

list = ["d", "b", "a", "c"]
number = list.length
compare = true
while compare
  compare = false
  (number-1).times do |position|
    if list[position] > list[position + 1]
      list[position], list[position + 1] = list[position +1], list[position]
      compare = true
    end
  end
end

puts list
