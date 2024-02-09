class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :posts, foreign_key: true
      t.timestamps
    end
  end
end
