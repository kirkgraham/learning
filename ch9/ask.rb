#!/usr/bin/env ruby

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true 
      else
        return false
      end
      break
    else
      puts %Q[Please answer "yes" or "no".]
    end
  end
end

puts "Intro..."
puts

# questions
ask "Do you like tacos?"
wets_bed = ask "Do you wet the bed?" 

puts
puts "Debriefing..."
puts
puts wets_bed

