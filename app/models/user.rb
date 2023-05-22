class User < ApplicationRecord
  has_many :spaces
  has_many :reviews, through: :spaces
end
