class Car < ApplicationRecord
  has_many :packages, dependent: :destroy
end
