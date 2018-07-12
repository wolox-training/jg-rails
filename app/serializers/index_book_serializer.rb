class IndexBookSerializer < BookBaseSerializerSerializer
  attributes :image
  def image
    { url: object.image }
  end
end
