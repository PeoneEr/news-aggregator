class UpdateNewestStatWorker
  include Sidekiq::Worker

  sidekiq_options :retry => false

  def perform
    VkFetcher.new.update_newest_stat
    FacebookFetcher.new.update_newest_stat
  end
end
