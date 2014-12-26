class RemoveColumnsFromRssbase < ActiveRecord::Migration
  def change
    remove_columns :entries, :content, :theme, :status, :image_url, :main, :category
  end
end
