# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "admin", password: "adminadmin", password_confirmation: "adminadmin")

Buyer.create(first_name: "Mervin", family_name: "Olivera")
Buyer.create(first_name: "Jobelle", family_name: "Camposano")
Buyer.create(first_name: "China", family_name: "Sadiasa")
Buyer.create(first_name: "Rafael", family_name: "Manalili")
Buyer.create(first_name: "David", family_name: "Abayon")
Buyer.create(first_name: "Kenneth", family_name: "Kim")
Buyer.create(first_name: "Jeminah", family_name: "Lim")
Buyer.create(first_name: "RL", family_name: "Alimojaned")
Buyer.create(first_name: "Dexter", family_name: "Bobis")
Buyer.create(first_name: "Almar", family_name: "Tamayo")
Buyer.create(first_name: "Martin", family_name: "Navarro")
Buyer.create(first_name: "Jasmin", family_name: "Guiao")
Buyer.create(first_name: "Vince", family_name: "Bernas")
Buyer.create(first_name: "Mark", family_name: "Pastoral")