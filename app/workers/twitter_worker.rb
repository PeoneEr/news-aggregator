class TwitterWorker
  include Sidekiq::Worker
  sidekiq_options :retry => false

  def perform
    TwitterFetcher.new.update_stat
  end
end
