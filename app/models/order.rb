class Order < ApplicationRecord

  enum status: [ :requested, :approved, :dispatched, :rejected]

  belongs_to :user
  belongs_to :offer
  belongs_to :delivery_person, optional: true
  has_and_belongs_to_many :allergies, join_table: :order_allergies

  scope :active, -> { where("max_date > ? AND is_active = TRUE", DateTime.current) }

  after_initialize :set_defaults, if: :new_record?

private

  def set_defaults
    self.status = 0
  end

end
