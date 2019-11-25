class Company < ApplicationRecord
  has_many :users
  has_one :company_policy
  validates :name, presence: true, uniqueness: true
end
