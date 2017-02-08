class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :blog_author
      t.string :date_published
      t.text :content

      t.timestamps
    end
  end
end
