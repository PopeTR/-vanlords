# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1502113040754-9e3e85618a00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
van4 = Van.create(size: 4, name: 'Beloved vintage campervan for your next roadtrip', location: 'Amsterdam', availability: 1, description: "My much loved Campervan 'Alex' is available for rent! He can sleep 4, 2 on the Rock'n'roll double bed and 2 in the pop up roof area, 2 gas burner hob, sink, fridge, 'Propex' gas blower heater, Electric hook up, cutlery, and all utensils. Get in touch if Alex is booked as I now have a second Campervan 'Alexis' who is available for rent! Alex the ScottWheels Campervan 1 can sleep 4, two people on the Rock'n'roll bed downstairs and 2 in the pop up roof area. He also has a wind out Fiamma awning which is perfect for sitting under whilst enjoying a cold beer. The van has a Fridge, Gas 2 burner hob, sink, Propex Gas heater, window shields, a fantastically comfy double bed and leisure battery. Everything you need for cooking - whistling kettle, plates, bowls, cups, cutlery etc. I also provide ThermaRest mattresses for the pop top roof. Please note the nightly fee includes the cost of fully comprehensive insurance, details of which I have provided in the 'other things to note tab' below.", price_per_night: 95)
van4.photo.attach(io: file, filename: 'van4.png', content_type: 'image/png')
