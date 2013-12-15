class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :matter_id1
      t.integer :matter_id2
      t.timestamps
    end
    add_index :links, [ :matter_id1, :matter_id2 ]
  end
end
