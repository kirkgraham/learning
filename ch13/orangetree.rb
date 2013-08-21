#!/usr/bin/env ruby

class OrangeTree
	DEATH_AGE = 77 # Age that the tree will die.

	def initialize
		@height = 0
		@orange_count = 0
		@current_age = 0
	end

	attr_reader :orange_count, :height

	# Allows users to "pick" an orange off of the tree.
	def pick_an_orange
		if @orange_count == 0
			puts "Sorry, but there are no oranges!"
		else
			puts "Enjoy your orange!"
			@orange_count -= 1
		end
	end

	# Simulates an entire year passing for this tree.
	def one_year_passes
		puts "Another year has come and gone..."

		# Live or die...
		if @current_age >= DEATH_AGE 
			puts "Good bye... this tree has passed away."
			# Reset...
			@height = 0
			@orange_count = 0
			@current_age = 0
		else
			@current_age += 1 # Age the tree.
			@height += 2 # Let the tree grow.
			@orange_count = 0 # Last years fruit should "fall off".
			produce_fruit # Produce fruit?
		end
	end

	private
	# Sets the amount of fruit produced for this tree.
	def produce_fruit
		# Start producing fruit after age 7.
		# Ramp up the fruit production as the tree ages.
		case @current_age
		when 0...7
			puts "The tree is too young to have any fruit yet"
		when 7...20
		  	puts "Producing some fruit!"
		  	@orange_count += 10
		when 20...40
		  	puts "Producing some fruit!"
		  	@orange_count += 25
		when 40...60
			puts "Producing some fruit!"
			@orange_count += 40
		when 60..DEATH_AGE
			puts "Producing some fruit!"
			@orange_count += 50
		else
		  	puts "You gave me #{@current_age} -- I have no idea what to do with that."
		end
	end
end

o = OrangeTree.new
for cnt in 0...100
	puts "The tree is #{o.height} feet tall and now has #{o.orange_count} oranges."
	o.one_year_passes

	if cnt % 2 == 0
		3.times { o.pick_an_orange }
	end

	cnt -= 1
end
