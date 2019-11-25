class CreateCompanyPolicies < ActiveRecord::Migration[5.2]
  def change
    create_table :company_policies do |t|
      t.references :company, foreign_key: true
      t.integer :max_price_train
      t.integer :max_price_hotel
      t.integer :max_price_car

      t.timestamps
    end
  end
end
