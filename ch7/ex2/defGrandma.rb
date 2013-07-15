puts "Hello, sonny..."

while true
  response = gets.chomp
  if response == 'BYE'
    break
  end

  if response == response.upcase
    puts "NO, NOT SINCE #{(1930 + rand(21)).to_s}!"
  elsif
    puts "HUH?!?! SPEAK UP SONNY!!"
  end
  
  puts ""
end
