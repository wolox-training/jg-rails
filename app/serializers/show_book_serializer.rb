class ShowBookSerializer < BookBaseSerializerSerializer
  attributes :image, :actual_rent
  def actual_rent
    last = object.rents.last
    last if Date.current < last.to
  end
end
