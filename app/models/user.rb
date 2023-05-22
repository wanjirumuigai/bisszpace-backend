class User < ApplicationRecord
  has_secure_password
  validates :name, :telephone_no, presence: true
  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: {in: ["admin", "user"]}
end
