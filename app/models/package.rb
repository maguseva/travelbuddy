class Package < ApplicationRecord
  belongs_to :hotel
  belongs_to :train_to, class_name: "Train"
  belongs_to :train_from, class_name: "Train"
  belongs_to :car
  has_many :bookings
  validates :hotel, presence: true
  validates :car, presence: true
  validates :train_from, presence: true
  validates :train_to, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :dep_city, presence: true
  validates :arr_city, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  # geocoded_by :dep_city
  # after_validation :geocode, if: :will_save_change_to_dep_city?
  # after_create :set_arrival_coordinates

  private

  # def set_arrival_coordinates
  #   arrival = self.arr_city
  #   self.latitude2 = Geocoder.search(arrival).first.data["lat"].to_f
  #   self.longitude2 = Geocoder.search(arrival).first.data["lon"].to_f
  #   self.save
  # end
end
