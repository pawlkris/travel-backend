class AddLatLongToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :lat, :decimal
    add_column :locations, :long, :decimal
  end
end
