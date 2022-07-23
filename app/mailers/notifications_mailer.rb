class NotificationsMailer < ApplicationMailer
  def send_mail(client)
    @client = client

    mail(
      to: client.email,
      subject: 'hello'
    )
  end
end
