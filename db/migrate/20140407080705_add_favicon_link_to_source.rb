require 'progress_bar'

class AddFaviconLinkToSource < ActiveRecord::Migration
  def up
    add_column :sources, :favicon, :string
  end

  def down
    remove_column :sources, :favicon
  end
end
