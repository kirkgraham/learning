#!/usr/bin/env ruby

class Roman
	attr_accessor :input_number
	@@roman_numerals = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
	@@old_roman_numeral = ""

	def initialize(input_value = 0)
		@input_number = input_value
	end

	def check(val)
		div_num = @input_number / val
		if div_num > 0
			@@old_roman_numeral += @@roman_numerals.invert[val] * div_num
			@input_number = @input_number % val
		end
	end

	def convert
		@@old_roman_numeral = ""
		
		@@roman_numerals.values.reverse.each do |val|
			check(val)
		end

		@@old_roman_numeral
	end
end
