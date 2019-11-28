class CompanyPoliciesController < ApplicationController
  before_action :set_company_policy, only: [:edit, :update]

  def edit
  end

  def update
    if @company_policy.update(company_policy_params)
      redirect_to hr_home_path
      flash[:notice] = "Company policy has been successfully updated"
    else
      render :edit
    end
  end

  private

  def company_policy_params
    params.require(:company_policy).permit(:max_price_train, :max_price_car, :max_price_hotel)
  end

  def set_company_policy
    @company_policy = CompanyPolicy.find(params[:id])
    authorize @company_policy
  end
end
