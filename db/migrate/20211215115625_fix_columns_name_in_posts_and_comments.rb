class FixColumnsNameInPostsAndComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :user_id, :author_id
    rename_column :comments, :user_id, :author_id
  end
end
