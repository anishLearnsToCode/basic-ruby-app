require 'test_helper'

class RegistrationMailerTest < ActionMailer::TestCase
  test "new_player" do
    mail = RegistrationMailer.new_player
    assert_equal "New player", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
