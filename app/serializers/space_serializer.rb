class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :image_url, :location, :type, :"lease-cost"
end
