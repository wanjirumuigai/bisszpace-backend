class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :image_url, :location, :space_type, :lease_cost, :is_taken, :user_id, :leased_by_id
has_many :reviews
belongs_to :user
end
