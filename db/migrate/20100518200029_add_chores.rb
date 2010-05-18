class AddChores < ActiveRecord::Migration
  def self.up
    create_table :chores do |t|
      t.string :name
      t.integer :manager_id
      t.integer :unit_id
      t.text :comments
      t.boolean :complete
      t.timestamps
    end
  end

  def self.down
    drop_table :chores
  end
end
