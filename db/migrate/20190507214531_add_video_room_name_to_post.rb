class AddVideoRoomNameToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :video_room_name, :string
  end
end
