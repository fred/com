class Notifications < ActionMailer::Base

  def new_message(message)
    subject         'There is a new message at comizu.com'
    recipients      Setting.notifications_email
    from            'info@comizu.com'
    sent_on         Time.now
    content_type    "text/html"
    body            :message => message
  end

end
