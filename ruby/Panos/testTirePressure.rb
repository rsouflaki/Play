require 'test/unit'
require_relative 'tirePressure'

class TestPressure < Test::Unit::TestCase

	def testBasics
		assert_equal(true, tirepressure(40, 40, 38, 38))
		assert_equal(false, tirepressure(30, 30, 40, 40))
		#assert_equal(false, tirepressure(35, 35, 35, 35)) 	#deliberate failure
	end

end