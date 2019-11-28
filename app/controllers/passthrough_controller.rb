class PassthroughController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]

  def index
    path = case current_user.admin
           when true
             hr_home_path
           when false
             home_path
           else
             raise "User should have admin flag defined"
           end
    redirect_to path
  end
end
