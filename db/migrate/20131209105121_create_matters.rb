class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :type
      t.string :data
      t.string :idx1
      t.string :idx2
      t.string :idx3
      t.timestamps
    end

    add_index :matters, [ :idx1, :idx2, :idx3 ]
  end
end
