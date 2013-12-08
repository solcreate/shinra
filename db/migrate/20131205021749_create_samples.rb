class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.decimal :price
      t.datetime :started_at

      t.timestamps
    end
  end
end
