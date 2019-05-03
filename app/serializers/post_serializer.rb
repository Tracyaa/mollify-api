class PostSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :counselor_id, :gender_preference, :type, :content, :activated, :requested

  belongs_to :student
  belongs_to :counselor
end
