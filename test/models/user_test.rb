require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user email address must be unique" do
    user = User.new
    user.role = roles(:patron)
    user.email = users(:scarlet).email
    assert_not user.save, "Saved a duplicate email address"
  end
end
