class AddEncyclopediaEntries < ActiveRecord::Migration
  def up
  	create_table :encyclopedia_entries do |t|
  		t.string :word
  		t.text :content, length: 1000
  	end
  end

  def down
  	drop_table :encyclopedia_entries
  end
end
