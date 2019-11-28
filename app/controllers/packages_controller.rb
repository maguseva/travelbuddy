class PackagesController < ApplicationController
  before_action :set_package, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = policy_scope(Package).order(price: :desc)
    if params[:query].present?
      @packages = Package.where(dep_city: params[:dep_city], arr_city: params[:arr_city], start_date: params[:start_date], end_date: params[:end_date])
    else
      @packages = Package.all
    end
  end

  def show
    @booking = Booking.new
    @markers = [{ lat: @package.latitude, lng: @package.longitude }]
    @user = current_user
  end

  private

  def set_package
    @package = Package.find(params[:id])
    authorize @package
  end
end

