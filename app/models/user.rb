class User < ApplicationRecord
  has_secure_password
  has_many :cases

  validates :email, :uniqueness => true

  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password, :presence => true,
  :confirmation => true,
  :length => {:within => 6..16},
  :on => :create
  validates :password, :confirmation => true,
  :length => {:within => 6..16},
  :allow_blank => true,
  :on => :update
end
