namespace :mailer do
  desc 'Send morning news'
  task :morning => :environment do
    MyMailer.morning_entries(Entry.newest.order('rating desc').limit(30)).deliver
  end

  desc 'Send news hour time'
  task :hour => :environment do
    MyMailer.updating_entries(Entry.order('created_at desc').limit(30)).deliver
  end
end
