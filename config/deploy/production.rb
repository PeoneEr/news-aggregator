#role :app, %w{deploy@192.168.0.105}
#role :web, %w{deploy@192.168.0.105}
#role :db,  %w{deploy@192.168.0.105}

role :app, %w{deploy@31.211.41.20}
role :web, %w{deploy@31.211.41.20}
role :db,  %w{deploy@31.211.41.20}

set :stage, :production
server '31.211.41.20', user: 'deploy', roles: %w{web app db}
