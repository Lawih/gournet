class Offer < ApplicationRecord
  belongs_to :dish
  has_many :order
  scope :active, -> { where("max_date > ? AND is_active = TRUE", DateTime.current) }
end
