class AddStatusToGolfer < ActiveRecord::Migration[5.0]
  def change
    add_column :golfers, :status, :string
  end
end
