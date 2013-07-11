current_bottles = 99

puts ""
while current_bottles > 0

  bottle_text = "bottles"
  if current_bottles-1 == 1
    bottle_text = "bottle"
  elsif current_bottles-1 == 0
    bottle_text = "no more bottles"
  end

  puts "#{current_bottles} #{current_bottles==1?"bottle":"bottles"} of beer on the wall, #{current_bottles} #{current_bottles==1?"bottle":"bottles"} of beer."
  puts "Take one down and pass it around, #{(current_bottles-1 == 0)?"":current_bottles-1} #{bottle_text} of beer on the wall."

  current_bottles = current_bottles - 1

  puts ""
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
puts ""
