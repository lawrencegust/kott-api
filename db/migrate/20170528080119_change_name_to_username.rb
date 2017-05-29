class ChangeNameToUsername < ActiveRecord::Migration[5.0]
  def change
    remove_column :golfers, :name
    add_column :golfers, :username, :string
  end
end
