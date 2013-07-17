#!/usr/bin/env ruby

puts "Enter words for your array..."

myArray = []

loop do
  input = gets.chomp
  if !input.empty?
    # myArray << input
    myArray.push(input)
  else
    break
  end  
end

puts
if myArray.empty?
  puts "You sly dog... you didn't enter anything... tisk, tisk, tisk."
else
  puts "Your words sorted alphabetically are..."
  puts myArray.sort
end
