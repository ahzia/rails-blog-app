class FixPostRefToLikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :post_id
    add_reference :likes, :post, index: true
  end
end
