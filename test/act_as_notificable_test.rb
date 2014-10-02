require 'test_helper'

class ActAsNotificableTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ActAsNotificable
  end
end
