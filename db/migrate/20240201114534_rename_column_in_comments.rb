class RenameColumnInComments < ActiveRecord::Migration[7.1]
  def change
    remove_column :comments , :posts_id
  end
end
