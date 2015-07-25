require 'test_helper'

class GemMiniTestTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GemMiniTest::VERSION
  end

  def setup
    @myclass = GemMiniTest::GMT.new
  end

  def test_hello
    assert_equal "hello git", @myclass.hello("git") 
  end
end
