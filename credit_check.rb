#require 'pry'

odd_position = []
even_position = []
doubling = []
card_number = "4024007106512380"

numbers = card_number.to_s.split('')
second = numbers.map { |n| n.to_i }
backwards = second.reverse

backwards.each_slice(2) do |odd, even|
  odd_position << odd
  even_position << even
end

odd_position.each do |double|
double_up = double*2
  if double_up >= 10
    double_up -= 9
    doubling << double_up
  else
    double_up < 10
    doubling << double_up
  end
end

sum = even_position.reduce(:+) + doubling.reduce(:+)

if sum = sum % 2 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
