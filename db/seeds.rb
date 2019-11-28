# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the db.."
Hotel.destroy_all if Rails.env.development?
Car.destroy_all if Rails.env.development?
Train.destroy_all if Rails.env.development?
Package.destroy_all if Rails.env.development?

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
  address: 'Augustenstraße 2, Maxvorstadt, 80333 Munich, Germany',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775896/augusten_cc9yxo.png'
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
  address: 'Dachauer Str. 21, Maxvorstadt, 80335 Munich, Germany',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775896/ibis_lpeubh.png'
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
  address: 'Landwehrstr. 42, Eingang Goethestr., Ludwigsvorstadt, 80336 Munich, Germany',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775896/mirabell_gmtlfb.png'
  )

Hotel.create!(
  name: 'Holiday Inn Munich City Centre',
  price: 210,
  stars: 5,
  description: "Just 500 m from the Deutsches Museum, this non-smoking hotel in Munich offers a large convention area. Rosenheimer Platz City Rail Station is 50 m away and just 2 stops from Marienplatz.

Set within a shopping complex, the rooms at Holiday Inn Munich City Centre feature air conditioning, soundproofing, a flat-screen TV and coffee/tea facilities. The executive rooms offer views over the city.

A rich breakfast buffet is served in the Holiday Inn Munich's Grat³ restaurant, which also serves Bavarian and international specialties. Snacks, as well as à la carte menus, coffee and different cocktails are available in the Isar³ Bar, Café & Restaurant.

The Munich Holiday Inn’s reception is open 24 hours a day. Free WiFi is available throughout the hotel.",
  address: 'Hochstr. 3, Au-Haidhausen, 81669 Munich, Germany ',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775896/holidayinn_dpnmnl.png'
  )

Hotel.create!(
  name: 'Sheraton München Arabellapark Hotel',
  price: 130,
  stars: 4,
  description: "This hotel in Munich’s Bogenhausen district features 2 restaurants with a beer garden and bar, as well as a 22nd-floor spa with a pool, gym and sauna area. It is just 400 m from Arabellapark Underground Station and 10 minutes from central Munich.

The elegant, air-conditioned rooms at the Sheraton München Arabellapark Hotel feature a 32-inch flat-screen TV and tea/coffee facilities. All rooms include cosy armchairs and large windows, and some have a balcony. The Club Lounge is located on the 22nd floor.

Spa facilities at the Sheraton München Arabellapark include a heated pool, a Finnish sauna and a steam room. Guests can keep fit in the modern fitness room.

International food is served in the SixtySix Grill and Dine and Audrey’s Food & Flavour. Cocktails and snacks are available in the Arabella Bar, and the Paulaner beer garden is open in the summer.",
  address: 'Arabellastr. 5, Bogenhausen, 81925 Munich, Germany',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574775633/sheraton_yggvgw.png'
  )

# -----------------------------------------------------------------------------------------
puts "Creating cars.."
Car.create!(
  company_name: 'Sixt',
  price: 32,
  name: 'VW Golf',
  car_category: 'premium sedan',
  address: 'Bayerstraße 10A, 80335 München',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574776631/sixt_fx4gg9.png'
  )

Car.create!(
  company_name: 'Sixt',
  price: 81,
  name: 'Mercedes-Benz A-Class',
  car_category: 'premium',
  address: 'Bayerstraße 10A, 80335 München',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574777588/mercedes_dn05zj.png'
  )

Car.create!(
  company_name: 'Sixt',
  price: 29,
  name: 'Fiat 500',
  car_category: 'small',
  address: 'Bayerstraße 10A, 80335 München',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574777827/fiat_qcjhw5.png'
  )

Car.create!(
  company_name: 'Rentalcars.com',
  price: 35,
  name: 'BMW 1 Series',
  car_category: 'premium sedan',
  address: 'Bayerstraße 10A, 80335 München',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574778063/bmw_lugyem.png'
  )

Car.create!(
  company_name:'Rentalcars.com',
  price: 45,
  name: 'Ford Eco Sport',
  car_category: 'premium',
  address: 'Bayerstraße 10A, 80335 München',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574779940/ford_nw7zot.png'
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
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
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1574787281/bahn_kbjhft.png',
  dep_time: '19:55',
  arr_time: '00:42'
  )

# -----------------------------------------------------------------------------
puts "Creating packages!"
date_start = Date.today
days_amount = 7
(date_start..date_start + days_amount).each_with_index { |start_date, index|
  (index + 1..days_amount).each { |end_date_index|
    3.times do
      tf = Train.where(dep_city: 'Berlin Hbf').sample
      tt = Train.where(arr_city: 'Berlin Hbf').sample
      h = Hotel.all.sample
      c = Car.all.sample
      Package.create(
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

puts "Data seeded"
