# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'news-aggregator'
set :repo_url, 'git@github.com:PeoneEr/news-aggregator.git'

set :deploy_to, '/home/deploy/news-aggregator'

set :user, 'deploy'
#set :domain,
#role :web, domain
#role :app, domain
#role :db, domain, :primary => true

set :linked_files, %w{config/database.yml config/settings.yml config/sunspot.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}"  }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  task :add_default_hooks do
    after 'deploy:starting', 'sidekiq:quiet'
    after 'deploy:updated', 'sidekiq:stop'
    after 'deploy:reverted', 'sidekiq:stop'
    after 'deploy:published', 'sidekiq:start'
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
  after "deploy", "deploy:migrate"

end
