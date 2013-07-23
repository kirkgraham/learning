require 'minitest/unit'
require 'new_roman'
require 'yaml'

class TestNewRoman < MiniTest::Unit::TestCase
	def test_noInput
		r = NewRoman.new
		assert_equal('', r.convert, "Should have gotten the default case")
	end

	def test_random_numbers
		r = NewRoman.new(4)
		assert_equal('IV', r.convert, "Roman numeral should be IV")

		r.input_number = 2674
		assert_equal('MMDCLXXIV', r.convert, "Roman numeral should be MMDCLXXIV")

		r.input_number = 1398
		assert_equal('MCCCXCVIII', r.convert, "Roman numeral should be MCCCXCVIII")

		r.input_number = 139
		assert_equal('CXXXIX', r.convert, "Roman numeral should be CXXXIX")

		r.input_number = 3471
		assert_equal('MMMCDLXXI', r.convert, "Roman numeral should be MMMCDLXXI")

		r.input_number = 4000
		assert_equal('MMMM', r.convert, "Roman numeral should be MMMM")

		r.input_number = 1914
		assert_equal('MCMXIV', r.convert, "Roman numeral should be MCMXIV")

		r.input_number = 4922
		assert_equal('MMMMCMXXII', r.convert, "Roman numeral should be MMMMCMXXII")

		r.input_number = 4999
		assert_equal('MMMMCMXCIX', r.convert, "Roman numeral should be MMMMCMXCIX")
	end

	def test_lots_of_numbers
		r = NewRoman.new()

		test_data = YAML.load(File.read("test/modern_test_data.txt"))

		test_data.each do |k,v|
			r.input_number = k
			assert_equal(v, r.convert, "#{k} should have been #{v}")
		end
	end
end