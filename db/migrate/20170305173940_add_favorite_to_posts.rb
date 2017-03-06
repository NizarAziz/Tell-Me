class AddFavoriteToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :favorite_dish, :text
  end
end
