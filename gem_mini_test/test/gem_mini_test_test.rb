require 'test_helper'

class GemMiniTestTest < Minitest::Test
  def setup
    @myclass = GemMiniTest::GMT.new
  end

  def test_hello
    assert_equal "hello git", @myclass.hello("git") 
  end
end
