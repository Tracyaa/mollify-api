class PostSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :counselor_id, :gender_preference, :type, :content, :activated

  belongs_to :student
  belongs_to :counselor
end
