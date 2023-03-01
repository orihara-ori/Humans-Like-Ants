class AddReferencesToWorldRooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :world_rooms, :user, foreign_key: true
  end
end