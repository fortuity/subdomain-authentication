class DeviseCreateAdmins < ActiveRecord::Migration
  def self.up
    create_table(:admins) do |t|
			t.string :name
      t.authenticatable :encryptor => :sha1, :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable

      t.timestamps
    end

    add_index :admins, :email,                :unique => true
    add_index :admins, :confirmation_token,   :unique => true
    add_index :admins, :reset_password_token, :unique => true
    # add_index :admins, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :admins
  end
end
