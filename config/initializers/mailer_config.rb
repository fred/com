ActionMailer::DeliveryMethod = :sendmail
ActionMailer::SmtpSettings = {
  :address        => "localhost",
  :port           => 25,
  :domain         => "www.comizu.com"
}
ActionMailer::Base.sendmail_settings = {
  :location       => '/usr/sbin/sendmail',
  :arguments      => '-i -t -f info@comizu.com'
}
