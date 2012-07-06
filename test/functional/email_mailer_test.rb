require 'test_helper'

class EmailMailerTest < ActionMailer::TestCase
  test "revision" do
    mail = EmailMailer.revision
    assert_equal "Revision", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "production" do
    mail = EmailMailer.production
    assert_equal "Production", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
