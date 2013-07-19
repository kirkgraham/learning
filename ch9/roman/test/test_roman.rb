require 'minitest/unit'
require 'roman'

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

		test_data = {1 => 'I',
			2 => 'II',
			3 => 'III',
			4 => 'IIII',
			5 => 'V',
			6 => 'VI',
			7 => 'VII',
			8 => 'VIII',
			9 => 'VIIII',
			10 => 'X',
			11 => 'XI',
			12 => 'XII',
			13 => 'XIII',
			14 => 'XIIII',
			15 => 'XV',
			16 => 'XVI',
			17 => 'XVII',
			18 => 'XVIII',
			19 => 'XVIIII',
			20 => 'XX',
			32 => 'XXXII',
			33 => 'XXXIII',
			34 => 'XXXIIII',
			35 => 'XXXV',
			36 => 'XXXVI',
			37 => 'XXXVII',
			38 => 'XXXVIII',
			39 => 'XXXVIIII',
			40 => 'XXXX',
			41 => 'XXXXI',
			42 => 'XXXXII',
			43 => 'XXXXIII',
			44 => 'XXXXIIII',
			45 => 'XXXXV',
			46 => 'XXXXVI',
			47 => 'XXXXVII',
			48 => 'XXXXVIII',
			49 => 'XXXXVIIII',
			50 => 'L',
			63 => 'LXIII',
			64 => 'LXIIII',
			65 => 'LXV',
			66 => 'LXVI',
			67 => 'LXVII',
			68 => 'LXVIII',
			69 => 'LXVIIII',
			70 => 'LXX',
			71 => 'LXXI',
			72 => 'LXXII',
			73 => 'LXXIII',
			74 => 'LXXIIII',
			75 => 'LXXV',
			76 => 'LXXVI',
			77 => 'LXXVII',
			78 => 'LXXVIII',
			79 => 'LXXVIIII',
			80 => 'LXXX',
			81 => 'LXXXI',
			82 => 'LXXXII',
			83 => 'LXXXIII',
			84 => 'LXXXIIII',
			85 => 'LXXXV',
			86 => 'LXXXVI',
			87 => 'LXXXVII',
			88 => 'LXXXVIII',
			89 => 'LXXXVIIII',
			90 => 'LXXXX',
			91 => 'LXXXXI',
			92 => 'LXXXXII',
			93 => 'LXXXXIII',
			94 => 'LXXXXIIII',
			95 => 'LXXXXV',
			96 => 'LXXXXVI',
			97 => 'LXXXXVII',
			98 => 'LXXXXVIII',
			99 => 'LXXXXVIIII',
			100 => 'C',
			501 => 'DI',
			550 => 'DL',
			530 => 'DXXX',
			707 => 'DCCVII',
			890 => 'DCCCLXXXX',
			1500 => 'MD',
			1800 => 'MDCCC',
			900 => 'DCCCC',
			3999 => 'MMMDCCCCLXXXXVIIII'
		}

		test_data.each do |k,v|
			r.input_number = k
			assert_equal(v, r.convert, "#{k} should have been #{v}")
		end
	end

end
