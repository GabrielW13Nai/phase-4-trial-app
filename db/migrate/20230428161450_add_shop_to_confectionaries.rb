class AddShopToConfectionaries < ActiveRecord::Migration[7.0]
  def change
    add_column :confectionaries, :shop, :text
  end
end
