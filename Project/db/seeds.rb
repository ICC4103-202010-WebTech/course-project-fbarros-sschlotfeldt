# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u0 = User.create!(userName: "Null", email: nil, password: nil, adm: false)
u1 = User.create!(userName: "Fcob95", email: "fjbarros1@miuandes.cl", password: "123456", adm: true)
u2 = User.create!(userName: "SSch20", email: "sscholtfeldt@miuandes.cl", password: "123456", adm: true)
u3 = User.create!(userName: "Pepito", email: "pepito@gmail.com", password: "123456", adm: true)
u4 = User.create!(userName: "Marco56", email: "marco@gmail.com", password: "123456", adm: true)
u5 = User.create!(userName: "Esteb44", email: "esteban@gmail.com", password: "123456", adm: false)
u6 = User.create!(userName: "Rosa12", email: "rosa@gmail.com", password: "123456", adm: false)
u7 = User.create!(userName: "Maria2222", email: "maria@gmail.com", password: "123456", adm: false)
u8 = User.create!(userName: "Trini54", email: "trini@gmail.com", password: "123456", adm: false)


v1 = Venue.create!(name: "Venue1", description: "Description1", address: "Address1")
v2 = Venue.create!(name: "Venue2", description: "Description2", address: "Address2")
v3 = Venue.create!(name: "Venue3", description: "Description3", address: "Address3")
v4 = Venue.create!(name: "Venue4", description: "Description4", address: "Address4")
v5 = Venue.create!(name: "Venue5", description: "Description5", address: "Address5")
v6 = Venue.create!(name: "Venue6", description: "Description6", address: "Address6")

o0 = Organization.create!(name: "Null", user_id: u0.id)
o1 = Organization.create!(name: "Organization1", user_id: u1.id)
o2 = Organization.create!(name: "Organization2", user_id: u2.id)
o3 = Organization.create!(name: "Organization3", user_id: u3.id)
o4 = Organization.create!(name: "Organization4", user_id: u4.id)

e1 = Event.create!(title: "Event1", user_id: u1.id, organization_id: o0.id, description: "Description1", venue_id: v1.id, visibility: true)
e2 = Event.create!(title: "Event2", user_id: u2.id, organization_id: o0.id, description: "Description2", venue_id: v2.id, visibility: true)
e3 = Event.create!(title: "Event3", user_id: u0.id, organization_id: o1.id, description: "Description3", venue_id: v3.id, visibility: true)
e4 = Event.create!(title: "Event4", user_id: u0.id, organization_id: o2.id, description: "Description4", venue_id: v4.id, visibility: false)
e5 = Event.create!(title: "Event5", user_id: u0.id,organization_id: o1.id, description: "Description5", venue_id: v6.id, visibility: false)
e6 = Event.create!(title: "Event6", user_id: u6.id, organization_id: o3.id, description: "Description6", venue_id: v5.id, visibility: false)

vote1 = Vote.create!(user_id: u2.id, event_id: e1.id, date: "01/01/2021")
vote2 = Vote.create!(user_id: u1.id, event_id: e2.id, date: "01/01/2021")
vote3 = Vote.create!(user_id: u3.id, event_id: e3.id, date: "01/01/2021")
vote4 = Vote.create!(user_id: u4.id, event_id: e4.id, date: "01/01/2021")
vote5 = Vote.create!(user_id: u1.id, event_id:e1.id, date: "01/01/2021")
vote6 = Vote.create!(user_id: u1.id, event_id:e1.id, date: "02/01/2021")
vote7 = Vote.create!(user_id: u1.id, event_id:e1.id, date: "03/01/2021")

em1 = EventM.create!(user_id: u1.id, event_id: e1.id)
em2 = EventM.create!(user_id: u2.id, event_id: e1.id)
em3 = EventM.create!(user_id: u2.id, event_id: e2.id)
em4 = EventM.create!(user_id: u4.id, event_id: e2.id)
em5 = EventM.create!(user_id: u5.id, event_id: e2.id)
em6 = EventM.create!(user_id: u7.id, event_id: e2.id)
em7 = EventM.create!(user_id: u8.id, event_id: e2.id)
em8 = EventM.create!(user_id: u3.id, event_id: e3.id)
em9 = EventM.create!(user_id: u4.id, event_id: e4.id)
em10 = EventM.create!(user_id: u5.id, event_id: e5.id)
em11 = EventM.create!(user_id: u6.id, event_id: e6.id)

om1= OrganizationM.create!(user_id: u1.id, organization_id: o1.id)
om2= OrganizationM.create!(user_id: u6.id, organization_id: o1.id)
om3= OrganizationM.create!(user_id: u2.id, organization_id: o2.id)
om4= OrganizationM.create!(user_id: u3.id, organization_id: o3.id)
om5= OrganizationM.create!(user_id: u4.id, organization_id: o4.id)
om7= OrganizationM.create!(user_id: u8.id, organization_id: o4.id)
om8= OrganizationM.create!(user_id: u7.id, organization_id: o2.id)

pp1= ProfilePage.create!(user_id: u1.id, name: "Francisco", lastName: "Barros", bio: "bio1", address: "Address1")
pp2= ProfilePage.create!(user_id: u2.id, name: "Sebastian", lastName: "Schlotfeldt", bio: "bio2", address: "Address2")
pp3= ProfilePage.create!(user_id: u3.id, name: "Pepe", lastName: "Lagos", bio: "bio3", address: "Address3")
pp4= ProfilePage.create!(user_id: u4.id, name: "Marcos", lastName: "Mayer", bio: "bio4", address: "Address4")
pp5= ProfilePage.create!(user_id: u5.id, name: "Esteban", lastName: "Soto", bio: "bio5", address: "Address5")
pp6= ProfilePage.create!(user_id: u6.id, name: "Rosa", lastName: "Vargas", bio: "bio6", address: "Address6")
pp7= ProfilePage.create!(user_id: u7.id, name: "Maria", lastName: "Vera", bio: "bio7", address: "Address7")
pp8= ProfilePage.create!(user_id: u8.id, name: "Trini", lastName: "Laso", bio: "bio8", address: "Address8")


ohp1= OrgHomepage.create!(name: "Organization1", banner:"Logo1", description: "Description1", organization_id: o1.id)
ohp2= OrgHomepage.create!(name: "Organization2", banner:"Logo2", description: "Description2", organization_id: o2.id)
ohp3= OrgHomepage.create!(name: "Organization3", banner:"Logo3", description: "Description3", organization_id: o3.id)
ohp4= OrgHomepage.create!(name: "Organization4", banner:"Logo4", description: "Description4", organization_id: o4.id)

comment1= Comment.create!(user_id: u1.id, text: "txt1", event_id:e1.id)
comment2= Comment.create!(user_id: u2.id, text: "txt2", event_id:e2.id)
comment3= Comment.create!(user_id: u1.id, text: "txt3", event_id:e2.id)
comment4= Comment.create!(user_id: u3.id, text: "txt4", event_id:e3.id)

att1= Attachment.create!(attachment: "Img1", comment_id: comment1.id)
att1= Attachment.create!(attachment: "Img2", comment_id: comment2.id)
att1= Attachment.create!(attachment: "Img3", comment_id: comment3.id)

inbox1= Inbox.create!(user_id: u1.id)
inbox2= Inbox.create!(user_id: u2.id)
inbox3= Inbox.create!(user_id: u3.id)

chat1= Chat.create!(inbox1_id: inbox1.id, inbox2_id: inbox2.id)

msg1= Message.create!(user_id: u1.id, text:"Hola, como estay?", chat_id:chat1.id)
msg2= Message.create!(user_id: u2.id, text:"Hola. Bien gracias, y tu?", chat_id:chat1.id)

