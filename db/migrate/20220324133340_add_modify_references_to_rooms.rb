class AddModifyReferencesToRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :hotel_id
    add_reference :rooms, :hotel, foreign_key: true
  end
end
