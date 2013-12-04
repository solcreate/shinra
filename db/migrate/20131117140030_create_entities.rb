class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :type, limit: 50
      t.string :json
      t.string :key01, limit: 11
      t.string :key02, limit: 11
      t.string :key03, limit: 11
      t.string :key04, limit: 11
      t.string :key05, limit: 11
      t.timestamps
      t.datetime :deleted_at
    end
    add_index :entities, [ :type, :key01, :key02, :key03, :key04, :key05 ], name: 'entities_idx'
  end
end
