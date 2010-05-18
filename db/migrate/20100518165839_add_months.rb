class AddMonths < ActiveRecord::Migration
  def self.up
    create_table :months do |t|
      t.string :name
      t.integer :year
      t.integer :number
    end
    
    add_column :payments, :month_id, :integer
  end

  def self.down
    drop_table :months
    
    remove_column :payments, :month_id
  end
end
