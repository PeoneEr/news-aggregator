class MyMailer < ActionMailer::Base
  default from: Settings['mail.from']

  def updating_entries(info)
    @info = info
    mail(to: Settings['mail.to'], subject: "Новости #{Time.zone.now}. @Новости")
  end

  def morning_entries(info)
    @entries = info
    mail(to: MailerSetup.first.email, subject: 'Утренние новости прибыли')
  end
end
