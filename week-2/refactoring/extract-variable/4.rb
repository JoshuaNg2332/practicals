class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    if fancy
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct, fancy person!" })
    else
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct" })
    end
  end
end


class Mail

  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    base_text = "Welcome to MyProduct"

    body = fancy ? "#{ base_text }, fancy person!" : base_text
    mail_server.send_message({ to: @email, body: base_text })
  end
end