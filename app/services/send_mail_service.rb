class SendMailService < ApplicationService
  attr_reader :client

  def initialize(client)
    @client = client
  end

  def call
    NotificationsMailer.send_mail(client).deliver_now
  end
end
