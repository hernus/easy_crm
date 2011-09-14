class CreateOpportunities < ActiveRecord::Migration
  def self.up
    create_table :opportunities do |t|
      t.string 'name', :limit => 60
	  t.date 'closing_date_planned'
	  t.date 'closing_date_actual'
	  t.string 'status', :limit => 10
	  t.float 'value'
	  t.float 'probability'
      t.timestamps
    end
  end

  def self.down
    drop_table :opportunities
  end
end
