class ChangeLatlong < ActiveRecord::Migration[5.0]
  def change
    remove_column :golfers, :longitude
    remove_column :golfers, :latitude

    add_column :golfers, :longitude, :float
    add_column :golfers, :latitude, :float
  end
end
