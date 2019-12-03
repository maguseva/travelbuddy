class Company < ApplicationRecord
  has_many :users
  has_many :bookings, through: :users
  has_one :company_policy
  # validates :name, presence: true, uniqueness: true

  def spend_on_hotels
    bookings.sum { |booking| booking.package.hotel_price }
  end

  def spend_on_cars
    bookings.sum { |booking| booking.package.car_price }
  end

  def spend_on_trains
    bookings.sum { |booking| booking.package.train_price }
  end

  def spend_total
    bookings.sum { |booking| booking.package.price }
  end

  def top_users
    bookings.includes(:package).group(:user).order('sum_packages_price DESC').limit(5).sum('packages.price')
  end
end
