class AddReferencesToRooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :hotel, foreign_key: true
    remove_column :rooms, :hotel_id_id
  end
end
