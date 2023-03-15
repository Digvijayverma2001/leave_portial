# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




user = User.create(first_name: 'admin',last_name: '121',email: 'admin121@outlook.com',password:'123123',password_confirmation:'123123',role: '1')

Order.create(
user_id: 811,
status_order_id: 5,
note: nil,
cupon_code: nil,
cupon_price: 0.0,
paid: true,
delivery_name: "Mainland UK next day - orders received by 1pm",
delivery_price: 0.895e1,
payment_method_id: 2,
different_shipping_address: false,
ship_name: "Mel",
ship_address: "6 Aspect",
ship_address_2: "",
ship_city: "Camberley ",
ship_cap: "Gu15 3gh",
ship_country: "GB",
ship_a_gift: false,
gift_option_id: 0,
gift_note: "",
ship_telephone: "07709453510",
shipping_agency_id: 4,
consignment_no: "JD0002249278474616",
points_used: 0.0,
delivery_date: Sun, 01 Oct 2021,
review_email_sent: false,
completed_at: nil)










Order.create(
 user_id: 811,
 status_order_id: 6,
 created_at: nil,
 updated_at: nil,
 note: nil,
 cupon_code: nil,
 cupon_price: 0.0,
 paid: false,
 delivery_name: nil,
 delivery_price: 0.0,
 payment_method_id: nil,
 different_shipping_address: false,
 ship_name: nil,
 ship_address: nil,
 ship_address_2: nil,
 ship_city: nil,
 ship_cap: nil,
 ship_country: nil,
 ship_a_gift: false,
 gift_option_id: nil,
 gift_note: nil,
 ship_telephone: nil,
 shipping_agency_id: nil,
 consignment_no: nil,
 points_used: 0.0,
 delivery_date: nil,
 review_email_sent: false,
 completed_at: nil>)

