#!/usr/bin/env ruby

class NewRoman
	attr_accessor :input_number
	@@roman_numerals = {"I" => 1, "IV" => 4, "V" => 5, "IX" => 9, "X" => 10, 
		"XL" => 40, "L" => 50, "XC" => 90, "C" => 100, 
		"CD" => 400, "D" => 500, "CM" => 900, "M" => 1000}
	@@four_numerals = {"hundreds" => "CD", "tenths" => "XL", "ones" => "IV"}
	@@nine_numerals = {"hundreds" => "CM", "tenths" => "XC", "ones" => "IX"}
	@@new_roman_numeral = ""

	def initialize(input_value = 0)
		@input_number = input_value
	end

	def check(val)
		div_num = @input_number / val
		if div_num > 0
			@@new_roman_numeral += @@roman_numerals.invert[val] * div_num
			@input_number = @input_number % val
		end
	end

	def convert
		@@new_roman_numeral = ""
		
		@@roman_numerals.values.reverse.each do |val|
			if val <= @input_number
				check(val)
			end
		end

		@@new_roman_numeral
	end
end