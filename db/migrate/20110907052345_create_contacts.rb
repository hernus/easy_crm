class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string 'firstname', :limit => 40
	  t.string 'lastname', :limit => 40
	  t.string 'gender', :limit => 1
	  t.string 'email', :limit => 200
	  t.date 'birthdate' 
	  t.string 'mobile', :limit => 20 
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
