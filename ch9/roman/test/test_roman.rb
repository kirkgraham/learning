require 'minitest/unit'
require 'roman'
require 'yaml'

class TestRoman < MiniTest::Unit::TestCase
	def test_noInput
		r = Roman.new
		assert_equal('', r.convert, "Should have gotten the default case")
	end

	def test_random_numbers
		r = Roman.new(2500)
		assert_equal('MMD', r.convert, "Old roman numeral should be MMD")

		r.input_number = 2676
		assert_equal('MMDCLXXVI', r.convert, "Old roman numeral should be MMDCLXXVI")

		r.input_number = 1398
		assert_equal('MCCCLXXXXVIII', r.convert, "Old roman numeral should be MCCCLXXXXVIII")

		r.input_number = 3471
		assert_equal('MMMCCCCLXXI', r.convert, "Old roman numeral should be MMMCCCCLXXI")

		r.input_number = 4000
		assert_equal('MMMM', r.convert, "Old roman numeral should be MMMM")
	end

	def test_lots_of_numbers
		r = Roman.new()

		test_data = YAML.load(File.read("test/old_school_test_data.txt"))

		test_data.each do |k,v|
			r.input_number = k
			assert_equal(v, r.convert, "#{k} should have been #{v}")
		end
	end

end
