class ShowBookSerializer < BookBaseSerializerSerializer
  attributes :image, :actual_rent
  def actual_rent
    rents = object.rents.to_a
    rent = rents.last
    rents.last if Date.current < rent.to
  end
end
