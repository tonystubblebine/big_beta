class CreateBetaUsers < ActiveRecord::Migration
  def self.up
    create_table :beta_users do |t|
      t.string  :email
      t.string  :token
      t.integer :user_id
      t.string  :status, :default => "pending"
      t.string  :source
      t.text    :meta
      t.timestamps
    end
    add_index(:beta_users, :token)
  end
  
  def self.down
    drop_table :beta_users
  end
end
