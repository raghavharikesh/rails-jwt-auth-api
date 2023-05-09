class SendNotificationsJob < ApplicationJob
  queue_as :default

  def perform(article)
    UsernameMailer.send_notification_mail(article).deliver_now
  end
end
