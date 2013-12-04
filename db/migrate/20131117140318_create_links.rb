class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :entity
      t.integer :link_to_id
      t.timestamps
      t.datetime :deleted_at
    end
    add_index :links, [ :entity_id, :link_to_id ]
  end
end
