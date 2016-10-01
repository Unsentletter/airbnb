class RemovePhotoFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :photo, :string
  end
end
