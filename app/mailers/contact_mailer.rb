class ContactMailer < ActionMailer::Base
  default from: "<noreply@langrich.com>"
  default to: "<04kakerusiina17@gmail.com>"

  def received_email(contact)
    @contact = contact
    mail(
      subject: 'お問い合わせを承りました')
  end

end
