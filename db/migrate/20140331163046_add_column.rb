class AddColumn < ActiveRecord::Migration
  def change
    add_column :entries, :news_type, :string
  end
end
