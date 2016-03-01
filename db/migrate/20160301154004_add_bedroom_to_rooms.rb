class AddBedroomToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :bed_room, :integer
  end
end
