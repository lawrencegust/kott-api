class DeviseTokenAuthCreateGolfers < ActiveRecord::Migration[5.0]
  def change
    create_table(:golfers) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""
      t.integer :handicap
      t.string :slug, unique: true
      
      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.string :name
      t.string :email

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :golfers, :email
    add_index :golfers, :handicap
    add_index :golfers, [:uid, :provider],     :unique => true
    add_index :golfers, :reset_password_token, :unique => true
    # add_index :golfers, :confirmation_token,   :unique => true
    # add_index :golfers, :unlock_token,         :unique => true
  end
end
