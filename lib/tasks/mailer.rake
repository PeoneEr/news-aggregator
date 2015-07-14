namespace :mailer do
  desc 'Send morning news'
  task :morning => :environment do
    MyMailer.delay(retry: false).morning_entries(Entry.newest.order('rating desc').limit(30))
  end

  desc 'Send news hour time'
  task :hour => :environment do
    MyMailer.delay(retry: false).updating_entries(Entry.order('created_at desc').limit(30))
  end
end
