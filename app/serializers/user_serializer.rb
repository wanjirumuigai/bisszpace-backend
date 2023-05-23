class UserSerializer < ActiveModel::Serializer

  attributes :id, :first_name, :last_name, :email, :telephone_no, :role
 
has_many :reviews

end
