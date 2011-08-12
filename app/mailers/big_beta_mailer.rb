class BigBetaMailer < ActionMailer::Base
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.big_beta_mailer.invitation.subject
  #
  def invitation(beta_user, message, sender)
    @beta_user = beta_user
    @message = message
    @sender = sender

    mail :to => @beta_user.email
    mail :from => @sender.email
  end
end
