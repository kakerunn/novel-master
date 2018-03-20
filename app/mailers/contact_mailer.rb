class ContactMailer < ActionMailer::Base
  default from: "送信元アドレス"
  default to: "04kakerusiina17@gmail.com"

  def received_email(contact)
    @contact = contact
    mail(
      subject: 'お問い合わせを承りました')
  end

end
