class AddCoordinatesToDoubles < ActiveRecord::Migration[6.0]
  def change
    add_column :doubles, :latitude, :float
    add_column :doubles, :longitude, :float
  end
end
