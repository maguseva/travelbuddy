class SeedsRegenerator
  def regenerate_packages(policy)
    Package.all.each { |p| p.update!(outdated: true) }
    puts "Creating packages!"
    date_start = Date.today
    days_amount = 7
    (date_start..date_start + days_amount).each_with_index { |start_date, index|
      (1..days_amount - index).each { |end_date_index|
        3.times do
          tf = Train.where(dep_city: 'Berlin Hbf').where('price <= ?', policy.max_price_train).sample
          tt = Train.where(arr_city: 'Berlin Hbf').where('price <= ?', policy.max_price_train).sample
          h = Hotel.where('price <= ?', policy.max_price_hotel).sample
          c = Car.where('price <= ?', policy.max_price_car).sample
          Package.create!(
            start_date: start_date,
            end_date: start_date + end_date_index,
            hotel: h,
            car: c,
            train_from: tf,
            train_to: tt,
            dep_city: 'Berlin',
            arr_city: 'Munich',
            price: tf.price + tt.price + h.price * end_date_index + c.price * end_date_index)
        end
      }
    }

    puts "Packages regenerated"
  end
end

