# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/new_player
  def new_player
    player = Player.first
    RegistrationMailer.new_player(player)
  end

end
