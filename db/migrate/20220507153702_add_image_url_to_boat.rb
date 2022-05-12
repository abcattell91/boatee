class AddImageUrlToBoat < ActiveRecord::Migration[6.1]
  def change
    add_column :boats, :image_url, :string
  end
end
