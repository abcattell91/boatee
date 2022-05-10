class ChangeDockedToBeBooleanInBoats < ActiveRecord::Migration[6.1]
  def change
    change_column :boats, :docked, :boolean
  end
end
