every 6.hour do
  rake "update:vk_and_facebook_stat", :output => "log/cron.log"
end

every 30.minutes do
  rake "update:rss", :output => "log/cron.log"
  rake "update:stat_newest_entries", :output => "log/cron.log"
  rake "update:twitter_stat", :output => "log/cron.log"
end


#every 1.hour do
every '0 6,7,8,9,10,11,12,13,14,15,16,17,18 * * 1-5' do
  rake "mailer:hour", :output => 'log/cron.log'
end

#every :day, :at => '07:00am' do
  #rake "mailer:morning", :output => 'log/cron.log'
#end
