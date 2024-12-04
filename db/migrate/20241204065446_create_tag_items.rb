class CreateTagItems < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_items do |t|
      t.references :post, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
