class PackagesController < ApplicationController
  before_action :set_package, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index; end

  def show
      @booking = Booking.new
      @user = current_user
    # @bookings = @package.bookings
  end

  private

  def set_package
    @package = Package.find(params[:id])
  end
end
