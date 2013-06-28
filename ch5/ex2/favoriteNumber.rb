#! /usr/bin/ruby

puts "Please enter your FAVORITE number: "
favorite_number_str = gets.chomp
favorite_number_int = favorite_number_str.to_i + 1

puts "Your OLD number was: #{favorite_number_str}; but really you should consider this bigger, better number as your NEW favorite: #{favorite_number_int}"

