class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  has_many :bookings

 # before_validation :assign_company

  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :email, presence: true, uniqueness: true

 # def assign_company
  #  self.company = Company.first
    # raise
 # end
end
