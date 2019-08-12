class Post < ApplicationRecord
  belongs_to :student, optional: true, class_name: 'User', foreign_key: :student_id
  belongs_to :counselor, optional: true, class_name: 'User', foreign_key: :counselor_id

  # validates :content, :presence => true,
end
