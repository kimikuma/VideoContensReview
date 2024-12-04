class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.string :title, null: false
      t.text :impression, null: false

      t.timestamps
    end
  end
end
