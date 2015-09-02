require 'test/unit'
require 'jenson'

class JensonTest < Test::Unit::TestCase

  def test_jenson_model
    j = Jenson.new('model','User',['first:string'])
    assert_equal 'User', j.model.name
    assert_respond_to j, 'generate'
  end

  def test_jenson_pattern
    j = Jenson.new('pattern','singleton')
  end

end
