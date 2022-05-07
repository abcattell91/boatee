class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.string :type
      t.string :docked
      t.references :user
      t.float :price
      t.integer :berth

      t.timestamps
    end
  end
end
