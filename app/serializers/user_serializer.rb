class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender, :age, :role, :school, :location, :has_a_case
  
  has_many :cases
end
