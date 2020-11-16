class CreateDoubles < ActiveRecord::Migration[6.0]
  def change
    create_table :doubles do |t|
      t.float :price
      t.string :name
      t.string :address
      t.text :description
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
