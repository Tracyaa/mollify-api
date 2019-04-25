class CaseSerializer < ActiveModel::Serializer
  attributes :id, :assigned_to, :gender_preference, :type, :content, :activated

  belongs_to :user
end
