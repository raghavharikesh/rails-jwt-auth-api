class UsernameMailer < ApplicationMailer
	 def send_notification_mail(article)
           @article = article
           mail(to: Username.pluck(:email), subject:'Simple Demo to showcase Active Job after article create')
     end
end
