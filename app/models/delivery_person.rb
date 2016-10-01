class DeliveryPerson < ApplicationRecord
    has_many :orders
end
