class MyMailer < ActionMailer::Base
  default from: Settings['mail.from']

  def updating_entries(info)
    @info = info
    mail(to: Settings['mail.to'], subject: 'Новые записи')
  end

  def morning_entries(info)
    @entries = info
    mail(to: Settings['mail.to'], subject: 'Утренние новости прибыли')
  end
end
