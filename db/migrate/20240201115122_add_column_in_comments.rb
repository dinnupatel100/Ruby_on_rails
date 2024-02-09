class AddColumnInComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :blog_id, :integer
  end
end
