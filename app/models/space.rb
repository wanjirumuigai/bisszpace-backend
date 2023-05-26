class Space < ApplicationRecord
belongs_to :user
has_many :reviews

validates :name, presence: true
validates :size, numericality: { only_integer: true}
validates :space_type, inclusion: { in: %w(office shop warehouse Office Shop Warehouse),
    message: "%{value} is not a valid space_type. Input either office, shop or warehouse!" }
validates :lease_cost, numericality: { only_integer: true}

end
