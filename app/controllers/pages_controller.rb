class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @class = "home-search"
  end

  def hr_home; end

  def all_bookings
    @bookings = Booking.all
  end
end
