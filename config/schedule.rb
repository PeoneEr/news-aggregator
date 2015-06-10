every 7.hour do
  rake "update:vk_and_facebook_stat"
end

every 30.minutes do
  rake "update:rss"
end

every 40.minutes do
  rake "update:stat_newest_entries"
  rake "update:twitter_stat"
end
