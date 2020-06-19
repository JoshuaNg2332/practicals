# Understands sanitising a user's email and sending them an email
class UserContacter
  def send_email_to(user)
    mail = Mail.new(SatnitisedEmail.new.sanitised_email_for(user))
    
    mail.send_message
  end
  
end

class SanitisedEmail

  def sanitised_email_for(user)
    email.strip
  end

end