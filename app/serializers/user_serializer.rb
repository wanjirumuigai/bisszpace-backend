class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :telephone_no, :role
end
