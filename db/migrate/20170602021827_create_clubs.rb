class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :club_type
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :address
      t.string :city
      t.string :zip
      t.string :state
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
