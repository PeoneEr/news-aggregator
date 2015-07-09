class UpdateOlderStatWorker
  include Sidekiq::Worker
  sidekiq_options :retry => false

  def perform
    VkFetcher.new.update_older_stat
    FacebookFetcher.new.update_older_stat
  end
end
