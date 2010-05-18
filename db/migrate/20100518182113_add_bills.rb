class AddBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.string :name
      t.float :amount
      t.date :due_on
      t.date :paid_on
      t.integer :payee_id
      t.timestamps
    end
    
    create_table :payees do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :service
      t.timestamps
    end
  end

  def self.down
    drop_table :payees
    drop_table :bills
  end
end
