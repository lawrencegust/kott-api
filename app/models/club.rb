class Club < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{address}, #{city}, #{state}, #{zip}"
  end
end
