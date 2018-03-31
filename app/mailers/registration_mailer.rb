class RegistrationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.registration_mailer.new_player.subject
  #
  def new_player(player)
    @greeting = "Hi"
    @player = player

    mail to: "anish_@outlook.com",
         subject: "Welcome #{player.first_name}"
  end
end
