class PackagesController < ApplicationController
  before_action :set_package, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = policy_scope(Package).order(price: :desc)
    if params[:query].present?
      @packages = Package.search_by_name(params[:query])
    else
      @packages = Package.all
    end
  end

  def show
    # @booking = Booking.new
    # @bookings = @package.booking
  end

  private

  def set_package
    @package = Package.find(params[:id])
    authorize @package
  end
end
