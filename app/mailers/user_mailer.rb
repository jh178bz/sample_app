class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  
  # @user.secd_reset_email
  # UserMailer.password_reset(self).deliver_now
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
