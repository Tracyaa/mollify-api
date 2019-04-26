class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :age, :role, :school, :location, :has_a_post

  has_many :situations
  has_many :inquiries
end
