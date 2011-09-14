class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string "Name"
	  t.string "City", :limit => 30
	  t.integer "user_id"
	  t.string "address", :limit => 100
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
