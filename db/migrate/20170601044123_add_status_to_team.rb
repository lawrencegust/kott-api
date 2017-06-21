class AddStatusToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :status, :string
  end
end
