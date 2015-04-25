class UpdateNewestStatWorker
  include Sidekiq::Worker

  def perform
    VkFetcher.new.update_newest_stat
    FacebookFetcher.new.update_newest_stat
  end
end
