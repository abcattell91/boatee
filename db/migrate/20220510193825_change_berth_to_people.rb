class ChangeBerthToPeople < ActiveRecord::Migration[6.1]
  def change
    rename_column :boats, :berth, :guests
  end
end
