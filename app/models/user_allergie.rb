class UserAllergie < ApplicationRecord
  belongs_to :user
  belongs_to :allergie
end
