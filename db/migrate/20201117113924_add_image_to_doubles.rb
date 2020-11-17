class AddImageToDoubles < ActiveRecord::Migration[6.0]
  def change
    add_column :doubles, :image_URL, :string
  end
end
