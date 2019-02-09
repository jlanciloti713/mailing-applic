class MessageMailer < ApplicationMailer
  def contact_form_message(name, email, number, content)
    @name = name
    @email = email
    @number = number
    @content = content

    mail(to: "jlanciloti713@gmail.com", subject: "Email from your website")
  end
end
