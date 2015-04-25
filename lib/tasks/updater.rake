namespace :update do

  desc 'Update rss'
  task :rss => :environment do
    Source.all.map { |c| c.delay.fetch_entries }
  end

  desc 'Update newest entries statistics'
  task :stat_newest_entries => :environment do
    UpdateNewestStatWorker.perform_async
  end

  desc 'Update twitter statistics'
  task :twitter_stat => :environment do
    TwitterWorker.perform_async
  end

  desc 'Update vkontakte and facebook statistics'
  task :vk_and_facebook_stat => :environment do
    UpdateOlderStatWorker.perform_async
  end
end
