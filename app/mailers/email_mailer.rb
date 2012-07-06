class EmailMailer < ActionMailer::Base
  default from: "roy.0805@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_mailer.revision.subject
  #
  def revision(email, sent_at=Time.now)
    @subject="REVISION requested"
    @from=email.from
    @recipients=email.editors
#    @sent_on=Time.now
    @sent_on=sent_at
    @body=email
    @greeting = "Hi"

    mail to: email.to
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_mailer.production.subject
  #
  def production(email, sent_at=Time.now)
    @greeting = "Hi"
#    @recipients=email.to
    @recipients=email.to
    @from=email.from
    @sent_on=sent_at
    @body=email
    mail to: email.to
  end
end
