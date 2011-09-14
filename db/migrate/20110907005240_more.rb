class More < ActiveRecord::Migration
  def self.up
  add_column("customers","revenue", :float)
  rename_column("customers","Name","name")
  rename_column("customers","City","city")
  end

  def self.down
  remove_column("customers","revenue")
  rename_column("customers","name","Name")
  rename_column("customers","city","City")  
  end
end
