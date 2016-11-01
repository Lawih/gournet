class Order < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  belongs_to :delivery_person, optional: true
  has_and_belongs_to_many :allergies, join_table: :order_allergies
end
