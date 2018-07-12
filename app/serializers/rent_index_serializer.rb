class RentIndexSerializer < ActiveModel::Serializer
  attributes :id, :from, :to, :book, :user

  def user
    UserSerializer.new(User.find(object.user_id))
  end

  def book
    Book.find(object.book_id)
  end
end
