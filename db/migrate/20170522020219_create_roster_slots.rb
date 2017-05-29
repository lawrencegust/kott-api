class CreateRosterSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :roster_slots do |t|
      t.integer :golfer_id, foreign_key: true, index: true
      t.integer :team_id, foreign_key: true, index: true

      t.timestamps
    end
  end
end
