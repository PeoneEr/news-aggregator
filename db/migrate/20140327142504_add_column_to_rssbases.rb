class AddColumnToRssbases < ActiveRecord::Migration
  def change
    add_column :entries, :status, :string
  end
end
