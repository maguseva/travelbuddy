class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :destroy]
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bookings = policy_scope(Booking)
  end

  def hr_index
    @bookings = policy_scope(Booking.all)
  end

  def show; end

  def create
    @booking = Booking.new(booking_params)
    @booking.package = Package.find(params[:package_id])
    @booking.user = current_user
    if @booking.save
      confirm_booking(@booking)
      authorize @booking
      redirect_to booking_path(@booking)
    else
      render 'packages/show'
    end
  end

  def destroy
    @booking.destroy
    if current_user.admin
      redirect_to all_bookings_path
    else
      redirect_to bookings_path
    end
  end

  def spend_on_hotels
    Booking.find_each.inject(0) { |sum, b| sum + b.package.hotel_price }
  end

  def spend_on_cars
    Booking.find_each.inject(0) { |sum, b| sum + b.package.car_price }
  end

  def spend_on_trains
    Booking.find_each.inject(0) { |sum, b| sum + b.package.train_price }
  end

  def spend_total
    Booking.find_each.inject(0) { |sum, b| sum + b.package.price }
  end

  private

  def confirm_booking(booking)
    booking.status = "paid"
    booking.save
  end

  def booking_params
    params.permit
  end

  def set_bookings
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
