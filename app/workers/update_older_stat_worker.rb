class UpdateOlderStatWorker
  include Sidekiq::Worker

  def perform
    VkFetcher.new.update_older_stat
    FacebookFetcher.new.update_older_stat
  end
end
