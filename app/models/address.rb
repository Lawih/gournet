class Address < ApplicationRecord
  belongs_to :user
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [address, city].compact.join(', ')
  end
end
