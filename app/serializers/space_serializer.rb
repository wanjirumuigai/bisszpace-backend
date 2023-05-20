class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :image_url, :location, :type, :"lease-cost", :is_taken, :user_id, :leased_by_id
end
