require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rvm'
require 'capistrano/sidekiq'
require 'capistrano/deploytags'
require "whenever/capistrano"
require 'new_relic/recipes'

set :rvm_type, :user
set :rvm_ruby_version, '2.0.0-p481'

Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
