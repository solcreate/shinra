class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :thing
      t.integer :link_thing_id
      t.timestamps
    end
    add_index :links, [ :thing_id, :link_thing_id ]
  end
end
