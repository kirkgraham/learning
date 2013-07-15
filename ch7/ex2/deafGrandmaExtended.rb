puts "Hello, sonny..."

byeCnt = 0

while true
  response = gets.chomp

  if response == 'BYE'
    byeCnt += 1
  else
    byeCnt = 0
  end
  
  if byeCnt == 3
    break
  end

  if response == response.upcase
    puts "NO, NOT SINCE #{(1930 + rand(21)).to_s}!"
  elsif
    puts "HUH?!?! SPEAK UP SONNY!!"
  end
  
  puts ""
end
