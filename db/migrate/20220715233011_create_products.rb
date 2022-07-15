class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :title
      t.text :description
      t.float :price
      t.references :products, :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
