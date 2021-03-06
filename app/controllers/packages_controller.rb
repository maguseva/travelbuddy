class PackagesController < ApplicationController
  before_action :set_package, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = policy_scope(Package)
    if params[:start_date]
      converted_start_date = params[:start_date].split(' ').first
      converted_end_date = params[:start_date].split(' ').last
    end

    if params[:dep_city].present? && params[:arr_city].present? && params[:start_date].present?
      @packages = @packages.where(dep_city: params[:dep_city], arr_city: params[:arr_city], start_date: converted_start_date, end_date: converted_end_date).order(price: :asc)
    elsif params[:start_date].present?
      @packages = @packages.where(start_date: converted_start_date, end_date: converted_end_date).order(price: :asc)
    else
      @packages = Package.all.order(price: :asc)
    end
    @first_package = @packages.first
    @class = "full-screen"
  end

  def show
    @booking = Booking.new
    @markers = [{ lat: @package.latitude, lng: @package.longitude }, { lat: @package.latitude2, lng: @package.longitude2 }]
    @user = current_user
  end

  private

  def set_package
    @package = Package.find(params[:id])
    authorize @package
  end
end
