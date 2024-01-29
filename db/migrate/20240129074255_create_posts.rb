class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :p_name
      t.string :p_type
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
