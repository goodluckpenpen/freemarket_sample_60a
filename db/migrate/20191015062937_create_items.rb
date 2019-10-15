class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.references :user, null: false, foreign_key: true
      t.references :size, foreign_key: true
      t.references :condition, null: false, foreign_key: true
      t.references :delivery_fee, null: false, foreign_key: true
      t.references :delivery_method, null: false, foreign_key: true
      t.references :delivery_area, null: false, foreign_key: true
      t.references :delivery_day, null: false, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :price, null: false
      t.timestamps
    end
  end
end
