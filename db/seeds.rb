require "open-uri"

Van.destroy_all
User.destroy_all
Review.destroy_all
Booking.destroy_all

#Users

file = URI.open('https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80')
user1 = User.create(name: 'Tim Pope', password: 'password', phone_number: '06 9461 7162', email: "tim.pope@gmail.com")
user1.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
user2 = User.create(name: 'Sandra Verhof', password: 'password', phone_number: '06 9461 7163', email: "sandra.verhof@gmail.com")
user2.photo.attach(io: file, filename: 'user2.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1504257432389-52343af06ae3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
user3 = User.create(name: 'Sacha Meyer', password: 'password', phone_number: '07 8472 7162', email: "sacha.meyer@gmail.com")
user3.photo.attach(io: file, filename: 'user3.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
user4 = User.create(name: 'Florian Bucher', password: 'Password', phone_number: '07 8472 7162', email: "florian.bucher@gmail.com")
user4.photo.attach(io: file, filename: 'user3.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
user5 = User.create(name: 'Marilee Camp', password: 'password', phone_number: '06 9461 7162', email: "marilee.camp@gmail.com")
user5.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80')
user6 = User.create(name: 'Julia Bradford', password: 'password', phone_number: '06 9461 7162', email: "julia.bradford@gmail.com")
user6.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1548197001-ca380947be91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80')
user7 = User.create(name: 'Albertus Plet', password: 'password', phone_number: '06 9461 7162', email: "albertus.plet@gmail.com")
user7.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1442458370899-ae20e367c5d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80')
user8 = User.create(name: 'Yuna van Velthoven', password: 'password', phone_number: '06 9461 7162', email: "yuna.velthoven@gmail.com")
user8.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1575632312417-71da8ed4992d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
user9 = User.create(name: 'Melania Pleiter', password: 'password', phone_number: '06 9461 7162', email: "melania.pleiter@gmail.com")
user9.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=660&q=80')
user10 = User.create(name: 'Plum Vanlord', password: 'Password', phone_number: '07 8472 7162', email: "plum.vanlord@gmail.com")
user10.photo.attach(io: file, filename: 'user3.png', content_type: 'image/png')

#Vans

file = URI.open('https://images.unsplash.com/photo-1543395136-75b39bc00e0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
van1 = Van.create(size: 6, title: 'Big van for the whole family', location: 'Amsterdam', user_id: user10.id,  availability: 2, description: 'This campervan comfortably sleeps a family of 5. Its an amazing way to see the Netherlands.  Ideal for weekend breaks, extended touring holidays or festivals. Find the freedom of the road with unlimited milage and full insurance. Has Sony sound system cd/DVD that hooks onto iPhone. Not Local? Drop offs can be available at extra cost. Contact me for a Quote.', price_per_night: 55)
van1.photo.attach(io: file, filename: 'van1.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1523987355523-c7b5b0dd90a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
van2 = Van.create(size: 3, title: 'Cozy, stationary van, perfect for a summer holiday', location: 'Haarlem', user_id: user10.id, availability: 2, description: 'The campervan is located on a field outside of Amsterdam, right next to a lake. With the 2 bikes included in the price you can discover the surrounding arrea on a day-trip. The van includes a bathroom, fully functioning kitchen as well as a BBQ outside. The kitchen includes Glasses, cutlery, Kettle, pots pans and dishes. Fridge/freezer, electric hook up, sink and double hob, heating, entertainment system, LED lighting, Leisure battery, roll out bed and pop up roof.',  price_per_night: 80)
van2.photo.attach(io: file, filename: 'van2.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1513311068348-19c8fbdc0bb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
van3 = Van.create(size: 4, title: 'Brand new, luxury Maui Van', location: 'The Hague', user_id: user10.id,  availability: 2, description: 'Hire our luxurious brand new Maui Campervan for a Netherlands adventure in style! The perfect way to complete a road trip of a lifetime or to explore any of the Netherlands hidden treasures! 10% off for weekly bookings. Beautiful new professionally built interior, creating a cosy and comfortable space. Sleeps 4. Perfect for couples or a family with young children. Pull out Rock and Roll bed. Pop up roof which sleeps 1 adult or 2 small children (this is popular with the kids!). Leisure battery, so its possible to wild camp free!', price_per_night: 95)
van3.photo.attach(io: file, filename: 'van3.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1502113040754-9e3e85618a00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
van4 = Van.create(size: 2, title: 'Beloved vintage campervan for your next roadtrip', location: 'Zandvoort', user_id: user10.id, availability: 2, description: "My much loved Campervan 'Alex' is available for rent! He can sleep 4, 2 on the Rock'n'roll double bed and 2 in the pop up roof area, 2 gas burner hob, sink, fridge, 'Propex' gas blower heater, Electric hook up, cutlery, and all utensils. Get in touch if Alex is booked as I now have a second Campervan 'Alexis' who is available for rent! Alex the ScottWheels Campervan 1 can sleep 4, two people on the Rock'n'roll bed downstairs and 2 in the pop up roof area. He also has a wind out Fiamma awning which is perfect for sitting under whilst enjoying a cold beer. The van has a Fridge, Gas 2 burner hob, sink, Propex Gas heater, window shields, a fantastically comfy double bed and leisure battery. Everything you need for cooking - whistling kettle, plates, bowls, cups, cutlery etc. I also provide ThermaRest mattresses for the pop top roof. Please note the nightly fee includes the cost of fully comprehensive insurance, details of which I have provided in the 'other things to note tab' below.", price_per_night: 95)
van4.photo.attach(io: file, filename: 'van4.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1464851707681-f9d5fdaccea8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=805&q=80')
van5 = Van.create(size: 5, title: 'Lovely yellow van, newly refurbished', location: 'Amersfoort', user_id: user10.id, availability: 2, description: 'Our van has a fridge, two burner gas stove and sink with running water. The rear seats fold down to a bed - suitable for a couple and there is a bed in the pop up roof as well (suitable for an adult or child). There is LCD lighting throughout and USB power points to charge your phone. All bedding and crockery is provided free of charge. Our campervan is perfect for a couple, 3 adults or 2 adults and one child. It is also ideal for driving through the narrow roads of Scotland. For a small additional charge guests can rent our GPS, TV, outdoor table and chairs.', price_per_night: 68)
van5.photo.attach(io: file, filename: 'van5.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1533591362725-979dfce672b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=391&q=80')
van6 = Van.create(size: 2, title: 'Classic VW Van with modern interior', location: 'Uithoorn', user_id: user3.id, availability: 2, description: 'Ideal for weekend breaks, extended touring holidays or festivals. Find the freedom of the road with unlimited milage and full insurance. Simply drive and pitch up, a relaxing and enjoyable way to explore the great outdoors. Arriving at any site in a VW van of any kind draws an affinity from other campers and a family feel from the VW community.', price_per_night: 102)
van6.photo.attach(io: file, filename: 'van6.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1516939884455-1445c8652f83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
van7 = Van.create(size: 2, title: 'Beautiful classic van', location: 'Zandvoort', user_id: user10.id, availability: 2, description: "My much loved Campervan 'Alex' is available for rent! He can sleep 4, 2 on the Rock'n'roll double bed and 2 in the pop up roof area, 2 gas burner hob, sink, fridge, 'Propex' gas blower heater, Electric hook up, cutlery, and all utensils. Get in touch if Alex is booked as I now have a second Campervan 'Alexis' who is available for rent! Alex the ScottWheels Campervan 1 can sleep 4, two people on the Rock'n'roll bed downstairs and 2 in the pop up roof area. He also has a wind out Fiamma awning which is perfect for sitting under whilst enjoying a cold beer. The van has a Fridge, Gas 2 burner hob, sink, Propex Gas heater, window shields, a fantastically comfy double bed and leisure battery. Everything you need for cooking - whistling kettle, plates, bowls, cups, cutlery etc. I also provide ThermaRest mattresses for the pop top roof. Please note the nightly fee includes the cost of fully comprehensive insurance, details of which I have provided in the 'other things to note tab' below.", price_per_night: 95)
van7.photo.attach(io: file, filename: 'van4.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1549194898-60fd030ecc0f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
van8 = Van.create(size: 5, title: 'Luxury van for 5 people', location: 'Amersfoort', user_id: user10.id, availability: 2, description: 'Our van has a fridge, two burner gas stove and sink with running water. The rear seats fold down to a bed - suitable for a couple and there is a bed in the pop up roof as well (suitable for an adult or child). There is LCD lighting throughout and USB power points to charge your phone. All bedding and crockery is provided free of charge. Our campervan is perfect for a couple, 3 adults or 2 adults and one child. It is also ideal for driving through the narrow roads of Scotland. For a small additional charge guests can rent our GPS, TV, outdoor table and chairs.', price_per_night: 68)
van8.photo.attach(io: file, filename: 'van5.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1561361513-2d000a50f0dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80')
van9 = Van.create(size: 2, title: 'Simple van with kitchen', location: 'Uithoorn', user_id: user3.id, availability: 2, description: 'Ideal for weekend breaks, extended touring holidays or festivals. Find the freedom of the road with unlimited milage and full insurance. Simply drive and pitch up, a relaxing and enjoyable way to explore the great outdoors. Arriving at any site in a VW van of any kind draws an affinity from other campers and a family feel from the VW community.', price_per_night: 102)
van9.photo.attach(io: file, filename: 'van6.png', content_type: 'image/png')

#Reviews

Review.create(rating: 5, user_id: user2.id, description: 'We had a fantastic time with the camper on a long weekend in Cornwall. The transporter is just the right size; big enough for 2 people and a dog, but small enough to navigate rural lanes without too much bother. The camper is fully kitted out with pretty much everything you need, just add fuel (and a duvet!). Would definitely do again.')

Review.create(rating: 3, user_id: user3.id, description: "We hired the campervan for a weekend camp at the Latitude festival. It was clean , everything worked as it should, drove well and was very economical. Sean explained everything so even if you're a novice you'll have no issues using it. Hand over and drop off were easy and communications were answered quickly.")

Review.create(rating: 4, user_id: user7.id, description: "Awesome van! Highly recommended and very accommodating host. Great fun exploring part of Amsterdam or wherever you want to end up!")

Review.create(rating: 4, user_id: user6.id, description: "Sean's VW camper looked even better than in the photos when I arrived to collect it. It was really easy to drive, very economic on fuel, well equipped with all cooking & eating utensils & everything it advertises. What more can I say but I wish I could keep it a secret so it will be more likely available again for us to hire! We loved it. Sean was also a brilliant, easygoing, trusting & all round perfect host & I definitely hope to hire from him again")

Review.create(rating: 2, user_id: user8.id, description: "Modern camper van with great sound system ideal for short breaks. However, could have been cleaned a lot better. Slight glitch with lack of mains electric power connection didn't spoil our fun at Red Rooster music festival. Very helpful and accommodating service from Sean the owner. Perfect for a couple.")

Review.create(rating: 5, user_id: user1.id, description: 'The host was welcoming. The vehicle was clean and adequate for the purpose and all in all happy days')

#Bookings/Guests_for_Plum

Booking.create(start_date: '18.01.2019', end_date: '28.01.2019', total_price: 386, booking_status: 1, user_id: user1.id, van_id: van1.id)

Booking.create(start_date: '14.06.2019', end_date: '13.08.2029', total_price: 386, booking_status: 3, user_id: user2.id, van_id: van2.id)

Booking.create(start_date: '28.04.2020', end_date: '4.05.2020', total_price: 386, booking_status: 3, user_id: user3.id, van_id: van3.id)

Booking.create(start_date: '18.09.2020', end_date: '25.09.2020', total_price: 386, booking_status: 1, user_id: user4.id, van_id: van3.id)

Booking.create(start_date: '03.12.2020', end_date: '29.12.2020', total_price: 386, booking_status: 1, user_id: user5.id, van_id: van1.id)

Booking.create(start_date: '22.10.2020', end_date: '25.10.2020', total_price: 386, booking_status: 1, user_id: user6.id, van_id: van5.id)

Booking.create(start_date: '03.03.2021', end_date: '21.03.2021', total_price: 386, booking_status: 2, user_id: user7.id, van_id: van3.id)

Booking.create(start_date: '18.11.2020', end_date: '27.11.2021', total_price: 386, booking_status: 2, user_id: user8.id, van_id: van1.id)

Booking.create(start_date: '03.10.2020', end_date: '08.10.2020', total_price: 386, booking_status: 2, user_id: user9.id, van_id: van5.id)

#Bookings/Trips_of_Plum

Booking.create(start_date: '18.01.2019', end_date: '28.01.2019', total_price: 386, booking_status: 3, user_id: user10.id, van_id: van7.id)

Booking.create(start_date: '14.06.2019', end_date: '13.08.2029', total_price: 386, booking_status: 3, user_id: user10.id, van_id: van8.id)

Booking.create(start_date: '28.04.2020', end_date: '4.05.2020', total_price: 386, booking_status: 3, user_id: user10.id, van_id: van9.id)

