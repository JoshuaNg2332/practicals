def send_email_to(user)
  email = user.email.strip
  mail  = Mail.new(email)
  
  mail.send_message
end

def send_email_to(user)
  email = user.email
  mail  = Mail.new(email)
  mail.send_message
end

private

def new_email
  email.strip
  
end
