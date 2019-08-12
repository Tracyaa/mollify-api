class User < ApplicationRecord
  has_secure_password
  has_many :situations, class_name: 'Post', foreign_key: :student_id
  has_many :inquiries, class_name: 'Post', foreign_key: :counselor_id

  has_many :students, through: :inquiries

  validates :password, :confirmation => true
  validates :email, :uniqueness => true, format: { with: URI::MailTo::EMAIL_REGEXP }

  # :length => {:within => 6..16},
  # :on => :create
  
  # validates :password, 
  # :length => {:within => 6..16},
  # :allow_blank => true,
  # :on => :update
end
