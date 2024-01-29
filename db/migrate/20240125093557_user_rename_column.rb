class UserRenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :email, :user_email
  end
end
