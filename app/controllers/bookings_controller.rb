class BookingsController < ApplicationController
  before_action :set_bookings, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show, :create]

  def index; end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    # authorize @booking
    @booking.package = Package.find(params[:package_id])
    @booking.status = "paid"
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'packages/show'
    end
  end

  private

  def booking_params
    params.permit
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
