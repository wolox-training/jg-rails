class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :rents_count
end
