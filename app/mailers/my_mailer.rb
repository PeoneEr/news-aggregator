class MyMailer < ActionMailer::Base
  default from: "Новости by news.ai-factory.com <#{Settings['mail.from']}>"

  def updating_entries(info)
    @info = info
    mail(to: Settings['mail.to'], subject: "Часовые новости прибыли")
  end

  def morning_entries(info)
    @entries = info
    mail(to: Settings['mail.to'], subject: 'Утренние новости прибыли')
  end
end
