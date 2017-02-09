class AddPostIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :post_id, :integer
  end
end
