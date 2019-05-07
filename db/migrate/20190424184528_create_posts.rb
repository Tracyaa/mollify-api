class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :student_id
      t.integer :counselor_id
      t.string :gender_preference
      t.string :type
      t.string :content
      t.string :video_room_link
      t.string :video_room_name
      t.boolean :activated, default: false
      t.boolean :requested, default: false

      t.timestamps
    end
  end
end
