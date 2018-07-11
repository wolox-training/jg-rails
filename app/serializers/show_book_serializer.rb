class ShowBookSerializer < BookBaseSerializerSerializer
  attributes :image, :actual_rent
  def actual_rent
    last = object.rents.last
    last if Time.zone.now < last.to
  end
end
