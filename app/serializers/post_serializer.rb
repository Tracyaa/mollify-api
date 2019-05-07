class PostSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :counselor_id, :gender_preference, :type, :content, :activated, :requested, :video_room_link, :video_room_name

  belongs_to :student
  belongs_to :counselor
end
