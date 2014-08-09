every 6.hour do
  rake "update:vk_and_facebook_stat", :output => "log/cron.log"
end

every 30.minutes do
  rake "update:rss", :output => "log/cron.log"
  rake "update:stat_newest_entries", :output => "log/cron.log"
  rake "update:twitter_stat", :output => "log/cron.log"
end

every :day, :at => '07:00am' do
  rake "mailer:morning", :output => 'log/cron.log'
end
