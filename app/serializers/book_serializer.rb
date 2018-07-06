class BookSerializer < ActiveModel::Serializer
  attributes :id, :genre, :author, :image, :title, :publisher, :year, :rents
  def rents
    rents = object.rents.to_a
    rents.last
  end
end
