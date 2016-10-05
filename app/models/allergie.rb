class Allergie < ApplicationRecord
    has_and_belongs_to_many :orders, join_table: :order_allergies
    has_and_belongs_to_many :users, join_table: :user_allergies
end
