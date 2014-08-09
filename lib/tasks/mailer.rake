namespace :mailer do
  desc 'Send morning news'
  task :morning => :environment do
    MyMailer.morning_entries(Entry.order('rating desc').limit(30)).deliver
  end
end
