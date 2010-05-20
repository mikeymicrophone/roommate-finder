class StatusOfUnits < ActiveRecord::Migration
  def self.up
    add_column :units, :status, :string
  end

  def self.down
    remove_column :units, :status
  end
end
