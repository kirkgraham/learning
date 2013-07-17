screen_width = 74
half_width = 74/2

toc = [
  {
    :chapter => 1,
    :heading => "Getting Started",
    :page => 1
  },
  { 
    :chapter => 2,
    :heading => "Numbers",
    :page => 9
  },
  {
    :chapter => 3,
    :heading => "Letters",
    :page => 13
  },
  {
    :chapter => 4,
    :heading => "Ruby Fun",
    :page => 2354
  }
]

max_page_length = toc.max_by {|h| h[:page].to_s.length}[:page].to_s.length

puts
puts "Table of Contents".center(screen_width)

puts
toc.each { |element| puts ("Chapter " + element[:chapter].to_s + ": ") + element[:heading].ljust(half_width) +
  ("page " + element[:page].to_s.rjust(max_page_length)).rjust(half_width)
}
puts

# print "Chapter 1:  Getting Started".ljust(screen_width / 2)
# puts "page  1".rjust(screen_width / 2)

# print "Chapter 2:  Numbers".ljust(screen_width / 2)
# puts "page  9".rjust(screen_width / 2)

# print "Chapter 3:  Letters".ljust(screen_width / 2)
# puts "page 13".rjust(screen_width / 2)
