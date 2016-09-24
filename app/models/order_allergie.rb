class OrderAllergie < ApplicationRecord
  belongs_to :order
  belongs_to :allergie
end
