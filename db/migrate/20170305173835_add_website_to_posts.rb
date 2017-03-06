class AddWebsiteToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :website, :text
  end
end
