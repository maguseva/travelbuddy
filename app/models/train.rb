class Train < ApplicationRecord
  has_many :packages_as_train_from, source: :packages, foreign_key: :train_from_id
  has_many :packages_as_train_to, source: :packages, foreign_key: :train_to_id
end
