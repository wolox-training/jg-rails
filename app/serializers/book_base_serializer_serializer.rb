class BookBaseSerializerSerializer < ActiveModel::Serializer
  attributes :id, :genre, :author, :title, :publisher, :year
end
