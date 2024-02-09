class AddForeignKeyInComments < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :comments, :blogs, column: :blog_id
  end
end
