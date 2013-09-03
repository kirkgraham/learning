#!/usr/bin/env ruby

def chime &block
	hour = Time.new.hour

	if hour >= 13
		hour -= 12
	end
	if hour == 12
		hour = 0
	end

	hour.times do
		block.call
	end
end

chime do
	puts "DONG!"
end
