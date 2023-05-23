class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :user_id, :space_id
  belongs_to :user
  belongs_to :space
end
