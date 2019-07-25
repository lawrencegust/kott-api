class AddReadyToPlayToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :golfers, :ready_to_play, :boolean, default: false
  end
end
