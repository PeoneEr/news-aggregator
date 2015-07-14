every 40.minutes do
  rake "update:twitter_stat"
end

every 1.hour do
  rake "update:rss"
  rake "update:stat_newest_entries"
  rake "mailer:hour"
end

every 7.hour do
  rake "update:vk_and_facebook_stat"
end

every :day, :at => '7:00am' do
  rake "mailer:morning"
end
