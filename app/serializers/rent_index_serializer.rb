class RentIndexSerializer < ActiveModel::Serializer
  attributes :id, :from, :to

  belongs_to :book
  belongs_to :user
end
