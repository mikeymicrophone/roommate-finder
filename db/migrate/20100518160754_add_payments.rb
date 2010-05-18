class AddPayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.float :amount
      t.integer :room_id
      t.integer :renter_id
      t.datetime :paid_on
      t.datetime :deposited_on
      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
