class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :telephone_no, :role
end
