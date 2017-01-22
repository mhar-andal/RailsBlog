class RemoveAuthorPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :author
    add_column :posts, :author_id, :integer
  end
end
