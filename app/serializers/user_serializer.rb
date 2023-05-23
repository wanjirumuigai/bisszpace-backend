class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :telephone_no, :role
end
