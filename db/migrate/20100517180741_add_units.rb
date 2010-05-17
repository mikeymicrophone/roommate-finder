class AddUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
      t.string :name
      t.string :address
      t.string :number
      t.integer :rent
      t.timestamps
    end
  end

  def self.down
    drop_table :units
  end
end
