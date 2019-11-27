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
     #  confirm_booking(@booking)
     # @booking.update(start_date: Date.parse(@booking.start_date.split(' ')[0]).strftime("%B %e, %Y"))
     #  @booking.update(total_price:
     #    (Date.parse(@booking.end_date) - Date.parse(@booking.start_date)).to_i * @booking.package.price.to_i)
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
