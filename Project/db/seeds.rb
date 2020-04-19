# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create!(userName: "Fcob95", email: "fjbarros1@miuandes.cl", password: "123456", adm: true)
u2 = User.create!(userName: "SSch20", email: "sscholtfeldt@miuandes.cl", password: "123456", adm: true)
u3 = User.create!(userName: "Pepito", email: "pepito@gmail.com", password: "123456", adm: false)

v1 = Venue.create!(name: "Venue1", description: "Descripción1", address: "Address1")
v2 = Venue.create!(name: "Venue2", description: "Descripción2", address: "Address2")

e1 = Event.create!(title: "Evento1", host: u1, description: "Descripción1", venue: v1, visibility: true)
e2 = Event.create!(title: "Evento2", host: u2, description: "Descripción2", venue: v2, visibility: false)

vote1 = Vote.create!(user: u2, event: e1, date: nil)
vote2 = Vote.create!(user: u1, event: e2, date: nil)
vote3 = Vote.create!(user: u3, event: e1, date: nil)
vote4 = Vote.create!(user: u3, event: e2, date: nil)

em1 = EventM.create!(members: u2, event: e1)
em2 = EventM.create!(members: u3, event: e1)
em3 = EventM.create!(members: u1, event: e2)
em4 = EventM.create!(members: u3, event: e2)

o1 = Organization.create!(name: "Organización1", admin: u1, event: e1)
o2 = Organization.create!(name: "Organización2", admin: u2, event: e2)

om1= OrganizationM.create!(member: u2, organization: o1)
om2= OrganizationM.create!(member: u3, organization: o1)
om3= OrganizationM.create!(member: u1, organization: o2)
om4= OrganizationM.create!(member: u3, organization: o2)