class User < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, :telephone_no, presence: true
  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: {in: ["space_owner", "user"]}
end
