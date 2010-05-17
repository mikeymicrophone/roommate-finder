class AddRenters < ActiveRecord::Migration
  def self.up
    create_table :renters do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :room_id
      t.integer :pay_day
      t.timestamps
    end
  end

  def self.down
    drop_table :renters
  end
end
