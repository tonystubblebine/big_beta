require 'test_helper'

class BetaUserTest < ActiveSupport::TestCase
  test "can create instance of beta_user" do
    user = BetaUser.create(:email => 'foo@example.com')

    assert_not_nil user.id
    assert_not_nil user.token
  end
end
