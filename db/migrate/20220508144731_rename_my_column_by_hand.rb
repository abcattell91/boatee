class RenameMyColumnByHand < ActiveRecord::Migration[6.1]
  def change
    rename_column :boats, :type, :boat_type
  end
end
