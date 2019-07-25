class RenameRosterToPlayers < ActiveRecord::Migration[5.0]
  def change
    rename_table :roster_slots, :players
  end
end
