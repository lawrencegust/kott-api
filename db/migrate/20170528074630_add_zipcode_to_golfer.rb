class AddZipcodeToGolfer < ActiveRecord::Migration[5.0]
  def change
    add_column :golfers, :zipcode, :string
    add_column :golfers, :latitude, :string
    add_column :golfers, :longitude, :string
  end
end
