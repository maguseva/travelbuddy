# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the db.."
Booking.destroy_all # if Rails.env.development?
Package.destroy_all # if Rails.env.development?
Train.destroy_all # if Rails.env.development?
Hotel.destroy_all # if Rails.env.development?
Car.destroy_all # if Rails.env.development?
CompanyPolicy.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?
Company.destroy_all # if Rails.env.development?


puts "Creating a company"
Company.create!(name: "LeWagon")


puts "Creating users"
User.create!(email: "user@example.com", password: "123456", first_name: "Moritz", last_name: "Gosmann", company: Company.first)
User.create!(email: "admin@example.com", password: "123456", first_name: "HR", last_name: "person", admin: true, company: Company.first)

User.create!(email: "user1@example.com", password: "123456", first_name: "Anna", last_name: "Meyer", company: Company.first)
User.create!(email: "user2@example.com", password: "123456", first_name: "Emma", last_name: "Scott", company: Company.first)
User.create!(email: "user3@example.com", password: "123456", first_name: "John", last_name: "Edwards", company: Company.first)
User.create!(email: "user4@example.com", password: "123456", first_name: "Elizabeth", last_name: "May", company: Company.first)
User.create!(email: "user5@example.com", password: "123456", first_name: "Mark", last_name: "Ricker", company: Company.first)

puts "Creating a company policy"
CompanyPolicy.create!(company: Company.first, max_price_train: 150, max_price_hotel: 130, max_price_car: 35)


puts "Creating hotels.."
Hotel.create!(
  name: 'Augusten Hotel München',
  price: 106,
  stars: 3,
  description: "Just 500 m from the main train station, this 3-star hotel in Munich offers stylish rooms with free Wi-Fi and a flat-screen TV. The Old Town district is only 750 m from Augusten Hotel München.

Decorated in a retro 60’s or 70’s style, each of the bright rooms comes complete with a seating area, desk and private bathroom.

For an extra fee, you can enjoy a hearty buffet breakfast in the breakfast room. A 10-minute walk also takes you to numerous restaurants, cafés and bars.

The Old Botanical Gardens and Königsplatz Underground Station are both within 300 m of Augusten Hotel München.

Maxvorstadt is a great choice for travellers interested in museums, food and architecture.

This is our guests' favourite part of Munich, according to independent reviews.

Couples particularly like the location — they rated it 8.9 for a two-person trip.

We speak your language!",
  address: 'Augustenstraße 2,80333 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372524/Hotels/Augusten_1_bjx8e9.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372524/Hotels/Augusten_2_mcs0go.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372524/Hotels/Augusten_4_p6mr4p.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372524/Hotels/Augusten_3_wbbnof.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372524/Hotels/Augusten_5_c3vzje.jpg'
  )

Hotel.create!(
  name: 'ibis Hotel München City',
  price: 134,
  stars: 2,
  description: "This hotel offers rooms with flat-screen TV, a 24-hour bar and free internet terminals. It is a 4-minute walk from Munich Central Station and a few steps from the Karlstraße ‎tram stop.

All rooms at the Hotel Ibis München City include air conditioning and a private bathroom with hairdryer. Wi-Fi is free.

Breakfast is served from 04:00 until 12:00. Snacks and drinks are available all day at the Ibis’s bar.

Hotel Ibis München City is within a 20-minute walk of the Marienplatz square and the Theresienwiese (site of the Oktoberfest beer festival). There are direct transport services to the Munich Trade Fair and Munich Airport.

Maxvorstadt is a great choice for travellers interested in museums, food and architecture.

This is our guests' favourite part of Munich, according to independent reviews. ",
  address: 'Dachauer Str. 21,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373889/Hotels/Ibis_1_svzt9k.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372523/Hotels/Ibis_4_b0mfcu.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372523/Hotels/Ibis_5_ucqnuk.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372523/Hotels/Ibis_3_ujxwvf.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372523/Hotels/Ibis_2_sace9v.jpg'
  )

Hotel.create!(
  name: 'Hotel Mirabell',
  price: 126,
  stars: 3,
  description: "Hotel Mirabell is within comfortable walking distance of Munich's main train station, Stachus square and the Oktoberfest grounds. It also offers free WiFi and air-conditioning in all the hotel rooms.

The rooms feature a flat-screen satellite TV, free Sky TV channels and a tablet computer. Free shower gel and a hairdryer are featured in the private bathroom. Guests can enjoy a rich buffet breakfast every morning.

The Mirabell's 24-hour bar serves coffee, tea, non-alcoholic and alcoholic drinks, including local beers.

Guests can make free use of the internet corner in the lobby.

The main train station is only 400 m from the Mirabell. From here, trams, S-Bahn (city rail) and underground trains can be caught. There is a direct link to München Franz Joseph Strauß Airport which takes 40 minutes. Private parking is available on-site for a fee. ",
  address: 'Landwehrstr. 42,80336 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775896/mirabell_gmtlfb.png',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/Mirabel_3_qu8mjv.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/Mirabel_1_ufhkmz.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/Mirabel_4_sol7gf.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/Mirabel_2_ihjxcd.jpg'
  )

Hotel.create!(
  name: 'Holiday Inn Munich City Centre',
  price: 210,
  stars: 5,

  description: "Just 500 m from the Deutsches Museum, this non-smoking hotel in Munich offers a large convention area. Rosenheimer Platz City Rail Station is 50 m away and just 2 stops from Marienplatz.

Set within a shopping complex, the rooms at Holiday Inn Munich City Centre feature air conditioning, soundproofing, a flat-screen TV and coffee/tea facilities. The executive rooms offer views over the city.

A rich breakfast buffet is served in the Holiday Inn Munich's Grat³ restaurant, which also serves Bavarian and international specialties. Snacks, as well as à la carte menus, coffee and different cocktails are available in the Isar³ Bar, Café & Restaurant.

The Munich Holiday Inn’s reception is open 24 hours a day. Free WiFi is available throughout the hotel.",
  address: 'Hochstr. 3,81669 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/HolidayInn_1_oxgm1m.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/HolidayInn_3_bslx1o.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/HolidayInn_4_szqtfp.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775896/holidayinn_dpnmnl.png',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/HolidayInn_2_xecdco.jpg'

  )

Hotel.create!(
  name: 'Sheraton München Arabellapark Hotel',
  price: 130,
  stars: 4,
  description: "This hotel in Munich’s Bogenhausen district features 2 restaurants with a beer garden and bar, as well as a 22nd-floor spa with a pool, gym and sauna area. It is just 400 m from Arabellapark Underground Station and 10 minutes from central Munich.

The elegant, air-conditioned rooms at the Sheraton München Arabellapark Hotel feature a 32-inch flat-screen TV and tea/coffee facilities. All rooms include cosy armchairs and large windows, and some have a balcony. The Club Lounge is located on the 22nd floor.

Spa facilities at the Sheraton München Arabellapark include a heated pool, a Finnish sauna and a steam room. Guests can keep fit in the modern fitness room.

International food is served in the SixtySix Grill and Dine and Audrey’s Food & Flavour. Cocktails and snacks are available in the Arabella Bar, and the Paulaner beer garden is open in the summer.",
  address: 'Arabellastr. 5,81925 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775633/sheraton_yggvgw.png',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373887/Hotels/Sheraton_4_rnklsp.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373887/Hotels/Sheraton_5_oxrj6s.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373887/Hotels/Sheraton_1_xlp2wq.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373887/Hotels/Sheraton_2_tl5faj.jpg'
  )

# -----------------------------------------------------------------------------------------
puts "Creating cars.."
Car.create!(
  company_name:'Sixt',
  price: 32,
  name: 'VW Golf',
  car_category: 'Premium Sedan',
  address: 'Bayerstraße 10A,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/sixt-logo_eggczu.jpg'
  )

Car.create!(
  company_name:'Sixt',
  price: 81,
  name: 'Mercedes-Benz A-Class',
  car_category: 'Premium',
  address: 'Bayerstraße 10A,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/sixt-logo_eggczu.jpg'
  )

Car.create!(
  company_name: 'Sixt',
  price: 29,
  name: 'Fiat 500',
  car_category: 'Small',
  address: 'Bayerstraße 10A,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/sixt-logo_eggczu.jpg'
  )

Car.create!(
  company_name: 'Europcar',
  price: 35,
  name: 'BMW 1 Series',
  car_category: 'Premium Sedan',
  address: 'Bahnhofplatz 2,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/europcar-logo_cclxsx.jpg'
  )

Car.create!(
  company_name:'Europcar',
  price: 45,
  name: 'Ford Eco Sport',
  car_category: 'Premium',
  address: 'Bahnhofplatz 2,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/europcar-logo_cclxsx.jpg'
  )

# -----------------------------------------------------------------------------------------
puts "Creating trains.."
Train.create!(
  carrier_name: 'DB',
  price: 99,
  train_number: 'ICE501',
  dep_city: 'Berlin Hbf',
  arr_city: 'Munich Hbf',
  category: '1st class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '04:28',
  arr_time: '09:17'
  )


Train.create!(
  carrier_name: 'DB',
  price: 101,
  train_number: 'ICE701',
  dep_city: 'Berlin Hbf',
  arr_city: 'Munich Hbf',
  category: '1st class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '07:15',
  arr_time: '12:42'
  )

Train.create!(
  carrier_name: 'DB',
  price: 104,
  train_number: 'ICE701',
  dep_city: 'Berlin Hbf',
  arr_city: 'Munich Hbf',
  category: '1st class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '07:15',
  arr_time: '12:42'
  )

Train.create!(
  carrier_name: 'DB',
  price: 115,
  train_number: 'ICE1007',
  dep_city: 'Berlin Hbf',
  arr_city: 'Munich Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '15:38',
  arr_time: '20:01'
  )

Train.create!(
  carrier_name: 'DB',
  price: 123,
  train_number: 'ICE1605',
  dep_city: 'Berlin Hbf',
  arr_city: 'Munich Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '18:30',
  arr_time: '23:02'
  )

Train.create!(
  carrier_name: 'DB',
  price: 153,
  train_number: 'ICE1008',
  dep_city: 'Munich Hbf',
  arr_city: 'Berlin Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '05:57',
  arr_time: '10:24'
  )

Train.create!(
  carrier_name: 'DB',
  price: 155,
  train_number: 'ICE 602',
  dep_city: 'Munich Hbf',
  arr_city: 'Berlin Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '06:57',
  arr_time: '11:29'
  )

Train.create!(
  carrier_name: 'DB',
  price: 89,
  train_number: 'ICE 706',
  dep_city: 'Munich Hbf',
  arr_city: 'Berlin Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '13:55',
  arr_time: '18:33'
  )

Train.create!(
  carrier_name: 'DB',
  price: 95,
  train_number: 'ICE 1002',
  dep_city: 'Munich Hbf',
  arr_city: 'Berlin Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '15:56',
  arr_time: '20:26'
  )

Train.create!(
  carrier_name: 'DB',
  price: 67,
  train_number: 'ICE 1700',
  dep_city: 'Munich Hbf',
  arr_city: 'Berlin Hbf',
  category: '2nd class',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/DB_logo_red_outlined_200px_rgb_azo3ns.png',
  dep_time: '19:55',
  arr_time: '00:42'
  )

# -----------------------------------------------------------------------------
puts "Creating packages!"
date_start = Date.today
days_amount = 7
(date_start..date_start + days_amount).each_with_index { |start_date, index|
  (1..days_amount-index).each { |end_date_index|
    3.times do
      tf = Train.where(dep_city: 'Berlin Hbf').where('price <= ?', User.first.company.company_policy.max_price_train).sample
      tt = Train.where(arr_city: 'Berlin Hbf').where('price <= ?', User.first.company.company_policy.max_price_train).sample
      h = Hotel.where('price <= ?', User.first.company.company_policy.max_price_hotel).sample
      c = Car.where('price <= ?', User.first.company.company_policy.max_price_car).sample
      Package.create!(
        start_date: start_date,
        end_date: start_date + end_date_index,
        hotel: h,
        car: c,
        train_from: tf,
        train_to: tt,
        dep_city: 'Berlin, Germany',
        arr_city: 'Munich, Bayern, Germany',
        overnights: end_date_index,
        car_price: c.price * end_date_index,
        hotel_price: h.price * end_date_index,
        train_price: tf.price + tt.price,
        price: c.price * end_date_index + h.price * end_date_index + tf.price + tt.price)
    end
  }
}

puts "Creating past bookings for stats!"
date_start = Date.new(2019, 12, 1)
days_amount = 3
(date_start..date_start + days_amount).each_with_index { |start_date, index|
  (1..days_amount-index).each do |end_date_index|
    Booking.create!(
      user: User.where(admin: false).sample,
      package: Package.all.sample,
      status: 'paid')
    Booking.create!(
      user: User.where(admin: false).sample,
      package: Package.all.sample,
      status: 'paid')
  end
}
puts "Data seeded"

