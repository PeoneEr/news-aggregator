class AddColumnRatingToRssbase < ActiveRecord::Migration
  def change
    add_column :entries, :rating, :float, default: 0
  end
end
