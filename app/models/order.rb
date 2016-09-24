class Order < ApplicationRecord
  belongs_to :user
  belongs_to :dish
  belongs_to :delivery_person
end
