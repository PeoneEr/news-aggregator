class TwitterWorker
  include Sidekiq::Worker

  def perform
    TwitterFetcher.new.update_stat
  end
end
