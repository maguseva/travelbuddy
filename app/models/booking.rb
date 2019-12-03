class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :package
  validates :status, inclusion: { in: ["pending", "paid", "cancelled"] }
  validates :user, presence: true
  validates :package, presence: true
end
