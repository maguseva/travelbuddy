class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :destroy]
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

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
    redirect_to bookings_path
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
