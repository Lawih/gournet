class Chef < ApplicationRecord
  belongs_to :user
  validates :type, presence: true
end
