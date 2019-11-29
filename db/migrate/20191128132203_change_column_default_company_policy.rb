class ChangeColumnDefaultCompanyPolicy < ActiveRecord::Migration[5.2]
  def change
    change_column_default :company_policies, :max_price_train, 0
    change_column_default :company_policies, :max_price_hotel, 0
    change_column_default :company_policies, :max_price_car, 0
  end
end
