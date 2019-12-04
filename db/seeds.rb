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
CompanyPolicy.create!(company: Company.first, max_price_train: 200, max_price_hotel: 200, max_price_car: 200)


puts "Creating hotels.."
Hotel.create!(
  name: 'Augusten Hotel Munich',
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
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372524/Hotels/Augusten_5_c3vzje.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575387338/Hotels/AH_Logo_w3w2b8.png'
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
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575372523/Hotels/Ibis_2_sace9v.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575385789/ibis_hotel_hoaubk.png'
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
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/Mirabel_2_ihjxcd.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575385789/hotel-mirabell_gceool.png'
  )

Hotel.create!(
  name: 'Holiday Inn Munich City',
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
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373888/Hotels/HolidayInn_2_xecdco.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575385789/Holiday_Inn_Logo.svg_zy0c1h.png'

  )

Hotel.create!(
  name: 'Sheraton Munich',
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
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575373887/Hotels/Sheraton_2_tl5faj.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575385789/sheraton_lhi5iq.png'
  )

Hotel.create!(
  name: 'Hilton Munich City',
  price: 159,
  stars: 4,
  description: "A free 24-hour gym and a restaurant are offered by this hotel. It is located directly above Rosenheimer Platz S-Bahn Station, which offers fast connections to the city centre, Munich Airport and Munich Central Station.
  The air-conditioned rooms at the Hilton Munich City feature a flat-screen TV, a large desk, and tea/coffee facilities. Some rooms overlook the quiet courtyard. Free WiFi is available in public areas.",
  address: 'Rosenheimer Str. 15,81667 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575386248/Hilton3_j6hjnd.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575386248/Hilton4_msuw9q.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575386248/Hilton1_tcq49l.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575386248/Hilton2_wboyo3.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575386248/Hilton5_qvqrpx.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575386114/Hilton_l4vxyn.png'
  )


Hotel.create!(
  name: 'Courtyard by Marriott Munich',
  price: 153,
  stars: 4,
  description: "Free WiFi in all rooms, a Mediterranean bistro and modern gym are offered by this hotel. It is just a 3-minute walk from Munich Central Station and a 10-minute walk from Munich’s old town.
  The Courtyard by Marriott Munich City Center has air-conditioned rooms with refrigerators and windows that you can open. Children under 12 years stay free of charge.",
  address: 'Berliner Str. 93,80805 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405969/Hotels/Marriott1_xi0tw2.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405968/Hotels/Marriott2_hl2q34.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405971/Hotels/Marriott_3_vyeoj6.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405970/Hotels/Marriott_5_pa9aaz.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405969/Hotels/Marriott_4_dv0e3z.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/MarriottLogo_ecsyum.jpg'
  )


Hotel.create!(
  name: 'Roomers',
  price: 189,
  stars: 5,
  description: "Set in Munich, a 16-minute walk from Oktoberfest - Theresienwiese, Roomers Munich, Autograph Collection boasts free WiFi. Featuring a 24-hour front desk, this property also provides guests with a terrace. Local points of interest like Karlsplatz (Stachus) and Sendlinger Tor are both reachable within 2.1 km.
  All guest rooms at the hotel are fitted with air conditioning, a flat-screen TV, and a private bathroom equipped with a hairdryer. In addition, selected rooms come with a balcony, a seating area, a hot tub and/or a wardrobe.",
  address: 'Landsberger Str. 68,80339 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405967/Hotels/Roomers1_bq9ias.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405968/Hotels/Roomers2_f2seqx.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405966/Hotels/Roomers3_v2rezs.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405965/Hotels/Roomers4_n6qwaa.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405966/Hotels/Roomers5_phzxp0.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/RoomersLogo_dhhihj.jpg'
  )

Hotel.create!(
  name: 'Eurostars',
  price: 123,
  stars: 4,
  description: "Offering a stylish spa with indoor pool, sauna and fitness studio. Soundproofed rooms with free Wi-Fi, and a restaurant serving Mediterranean cuisine, this 4-star design hotel is just 750 m from Munich Central Station.
  All of the air-conditioned rooms and apartments at the Eurostars Grand Central feature a flat-screen TV, an elegant desk, and fine wooden floors.",
  address: 'Arnulfstraße 35,80339 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405975/Hotels/Eurostars1_xca2hi.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405974/Hotels/Eurostars2_iycmui.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405975/Hotels/Eurostars3_y8fsqb.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405981/Hotels/Eurostars4_mn28tl.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405974/Hotels/Eurostars5_tavovc.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406802/Hotels/EurostarsLogo_ilmg0k.jpg'
  )

Hotel.create!(
  name: 'Sofitel',
  price: 221,
  stars: 5,
  description: "Extensively renovated in 2017, this 5-star hotel is an historic building offering modern interior design and free Wi-Fi, just 100 m from Munich Main Station. Spa facilities at the Sofitel Munich include an indoor swimming pool, sauna and a modern 24-hour fitness studio.
  Sofitel Munich Bayerpost features a Wilhelmine facade and is on the site of the former Royal Bavarian Post Office. All rooms are air-conditioned and include a European king-size bed, flat-screen TV and an exclusive Nespresso© coffee machine and Hermes© toiletries.",
  address: 'Bayerstraße 12,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405965/Hotels/Sofitel1_hsmoeg.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405973/Hotels/Sofitel2_g6iwoc.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405965/Hotels/Sofitel3_jqfuvf.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405980/Hotels/Sofitel4_raj3wq.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405981/Hotels/Sofitel5_wqhsy2.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/SofitelLogo_p9i3ym.png'
  )

Hotel.create!(
  name: 'Novotel Munich City',
  price: 118,
  stars: 4,
  description: "The 4-star Novotel München City hotel provides air-conditioned rooms with hot drinks facilities. Rooms are decorated in soft colours and feature large windows.
  The Flave restaurant and bar serves local and international cuisine. Guests can also enjoy some drinks.",
  address: 'Hochstraße 11,81669 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405981/Hotels/Novotel1_lkmoid.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405980/Hotels/Novotel2_plen00.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405980/Hotels/Novotel3_nig7sv.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405980/Hotels/Novotel4_oxo79f.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405979/Hotels/Novotel5_xo05jd.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406802/Hotels/NovotelLogo_mo82bb.png'
  )

Hotel.create!(
  name: 'Pullman Munich',
  price: 125,
  stars: 4,
  description: "This hotel offers modern accommodation with free WiFi near the English Garden in Schwabing, Munich's Bohemian district. It features an outdoor terrace, a peaceful beer garden and modern spa & sauna facilities.
  The bright, spacious rooms at the Pullman Munich include a TV and a seating area with a work desk. Most rooms have a private balcony or a loggia.",
  address: 'Dombart-Straße 4,80805 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405979/Hotels/Pullman1_ybqsio.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405978/Hotels/Pullman2_zbclkf.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405978/Hotels/Pullman3_jrui7y.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405977/Hotels/Pullman4_vyqgif.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405979/Hotels/Pullman5_db9pld.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/PullmannLogo_wi57f2.png'
  )

Hotel.create!(
  name: 'Innside',
  price: 114,
  stars: 4,
  description: "This 4-star hotel in Munich’s Parkstadt Schwabing business park is a 20-minute walk from the English Garden. It offers modern accommodation, underground parking and a fully equipped fitness room.
  All of the designer rooms and studio apartments include air conditioning and a flat-screen TV with free Sky channels. They also include free drinks from the minibar, which can be refilled once a day upon request.",
  address: 'Mies-van-der-Rohe-Str. 10,80807 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405976/Hotels/Innside1_vcqm8g.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405976/Hotels/Innside2_myf72o.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405976/Hotels/Innside3_uq88k3.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405976/Hotels/Innside4_rskhsg.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405975/Hotels/Innside5_bmcafd.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/InnsideLogo_uvdtch.jpg'
  )

Hotel.create!(
  name: 'Le Meridien',
  price: 293,
  stars: 5,
  description: "Featuring an attractive lobby and a spa area with one of the city's longest hotel pools, this hotel is located just 50 m from Munich Main Station in the heart of the city. It offers designer interiors, free WiFi for up to 3 devices and free admission to selected cultural sights.
  Le Méridien Munich offers air-conditioned rooms with rich carpets and a 42-inch flat-screen TV. The marble bathrooms include a modern shower. Many of the quiet rooms face the leafy courtyard. Guests can enjoy luxurious complimentary toiletries.",
  address: 'Bayerstraße 41,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405973/Hotels/LeMeridien1_hpatey.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405973/Hotels/LeMeridien2_e2tu8h.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405972/Hotels/LeMeridien3_ysdjm5.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405973/Hotels/LeMeridien4_ocioay.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405971/Hotels/LeMeridien5_bw9gkh.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/LeMeridienLogo_cozmf7.png'
  )


Hotel.create!(
  name: 'NH Hotel Munich',
  price: 109,
  stars: 4,
  description: "This 4-star hotel enjoys a quiet location just 300 m from the A94 motorway, 5 km from Munich’s Neue Messe Exhibition Centre. It offers free Wi-Fi, a summer terrace and spa facilities.
  The spacious rooms at the NH München Messe feature modern décor and include soundproofing, air conditioning and satellite TV.",
  address: 'Eggenfelder Straße 100,81929 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405971/Hotels/NH_Munich_Messe1_itjygn.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405973/Hotels/HotelNH2_ynai3o.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405970/Hotels/HotelNH3_vi8qr6.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405971/Hotels/HotelNH4_kdhcky.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405968/Hotels/HotelNH5_yhs4zy.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575406801/Hotels/NHHotelLogo_yk53wm.jpg'
  )

Hotel.create!(
  name: 'Senator Hotel Munich',
  price: 96,
  stars: 3,
  description: "Offering elegant rooms, broadband internet access, and varied breakfast buffets, this hotel is just a 3-minute walk from the Oktoberfest site and a 10-minute walk from Munich Train Station.
  The Hotel Senator München has bright, contemporary-style rooms with cable TV and a work desk. Some include a private balcony or terrace.",
  address: 'Martin-Greif Straße 11,80336 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405968/Hotels/HotelSenator1_pewms1.jpg',
  photo2:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405967/Hotels/HotelSenator2_mermtd.jpg',
  photo3:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405966/Hotels/HotelSenator3_nflobe.jpg',
  photo4:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405965/Hotels/HotelSenator4_aw1vlq.jpg',
  photo5:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575405964/Hotels/HotelSenator5_o1j2sz.jpg',
  logo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575411193/Hotels/senatorLogo_xyk7e1.jpg'
  )


# -----------------------------------------------------------------------------------------
puts "Creating cars.."
Car.create!(
  company_name:'Sixt',
  price: 92,
  name: 'BMW M140i',
  car_category: 'Premium Limousine',
  address: 'Bayerstraße 10A,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/sixt-logo_eggczu.jpg',
  picture: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575391699/Cars/BMW_M140i_plnvmv.png'
  )

Car.create!(
  company_name:'Sixt',
  price: 96,
  name: 'Mercedes-Benz CLA',
  car_category: 'Premium Sport',
  address: 'Bayerstraße 10A,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/sixt-logo_eggczu.jpg',
  picture: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575391699/Cars/Mercedes-Benz_CLA_crea5i.png'
  )

Car.create!(
  company_name: 'Sixt',
  price: 84,
  name: 'Audi A4 Avant Aut.',
  car_category: 'Kombi',
  address: 'Bayerstraße 10A,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/sixt-logo_eggczu.jpg',
  picture: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575391699/Cars/audi-a4-kombi-brown-2016_gl2haj.png'
  )

Car.create!(
  company_name: 'Europcar',
  price: 91,
  name: 'BMW X5',
  car_category: 'Premium SUV',
  address: 'Bahnhofplatz 2,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/europcar-logo_cclxsx.jpg',
  picture:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575391699/Cars/Premium_SUV_kgbjkx.png'
  )

Car.create!(
  company_name:'Europcar',
  price: 89,
  name: 'VW Passat Variant',
  car_category: 'Kombi',
  address: 'Bahnhofplatz 2,80335 Munich',
  photo: 'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575375269/europcar-logo_cclxsx.jpg',
  picture:'https://res.cloudinary.com/dpk0jilwo/image/upload/v1575391699/Cars/vw-passat-kombi-blau-2015_ccrqjk.png'
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
        price: c.price * end_date_index + h.price * end_date_index + tf.price + tt.price,
        latitude: 52.5170365,
        longitude: 13.3888599,
        latitude2: 48.1371079,
        longitude2: 11.5753822)
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

