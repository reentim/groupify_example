require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'named group membership' do
    user = User.create!

    user.named_groups.add(:admin)

    assert_includes(user.named_groups, :admin)
  end
end
