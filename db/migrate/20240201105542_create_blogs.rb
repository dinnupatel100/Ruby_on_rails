class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :category
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
