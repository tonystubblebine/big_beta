require 'test_helper'

class BetaUserTest < ActiveSupport::TestCase
  test "can create instance of beta_user" do
    user = BigBeta::BetaUser.create(:email => 'foo@example.com')

    assert_not_nil user.id
    assert_not_nil user.token
  end

  test "beta_user.duplicate_email_error?" do
    user = BigBeta::BetaUser.create(:email => 'duplicate@example.com')
    assert !user.duplicate_email_error?

    user = BigBeta::BetaUser.create(:email => 'duplicate@example.com')
    assert user.duplicate_email_error?
  end

  test "beta_user.invalid_email_format_error?" do
    user = BigBeta::BetaUser.create(:email => 'valid@example.com')
    assert !user.invalid_email_format_error?

    user = BigBeta::BetaUser.create(:email => 'invalid@')
    assert user.invalid_email_format_error?
  end

end
