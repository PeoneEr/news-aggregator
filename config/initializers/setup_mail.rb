ActionMailer::Base.smtp_settings = {
  :address              => Settings['mail.provider'],
  :port                 => 587,
  :domain               => Settings['mail.domain'],
  :user_name            => Settings['mail.username'],
  :password             => Settings['mail.password'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}
