# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1 = User.create!(userName: "Fcob95", name: "Francisco", lastName: "Barros", bio: "bio1", address: "Address1", email: "fjbarros1@miuandes.cl", password: "123456", admin: false, )
u2 = User.create!(userName: "SSch20", name: "Sebastian", lastName: "Schlotfeldt", bio: "bio2", address: "Address2", email: "sscholtfeldt@miuandes.cl", password: "123456", admin: false)
u3 = User.create!(userName: "Pepito", name: "Pepe", lastName: "Lagos", bio: "bio3", address: "Address3", email: "pepito@gmail.com", password: "123456", admin: false)
u4 = User.create!(userName: "Marco56", name: "Marcos", lastName: "Mayer", bio: "bio4", address: "Address4", email: "marco@gmail.com", password: "123456", admin: false)
u5 = User.create!(userName: "Esteb44", name: "Esteban", lastName: "Soto", bio: "bio5", address: "Address5",  email: "esteban@gmail.com", password: "123456", admin: false)
u6 = User.create!(userName: "Rosa12",  name: "Rosa", lastName: "Vargas", bio: "bio6", address: "Address6", email: "rosa@gmail.com", password: "123456", admin: false)
u7 = User.create!(userName: "Maria2222", name: "Maria", lastName: "Vera", bio: "bio7", address: "Address7", email: "maria@gmail.com", password: "123456", admin: false)
u8 = User.create!(userName: "Trini54", name: "Trini", lastName: "Laso", bio: "bio8", address: "Address8",  email: "trini@gmail.com", password: "123456", admin: false)
u9 = User.create!(userName: "Admin1", name: "Administrator", lastName: "Master", bio: "Im the administrator boss", address: "Address9",  email: "administrator@gmail.com", password: "123456", admin: true)


v1 = Venue.create!(v_name: "Venue1", v_description: "Description1", v_address: "Address1")
v2 = Venue.create!(v_name: "Venue2", v_description: "Description2", v_address: "Address2")
v3 = Venue.create!(v_name: "Venue3", v_description: "Description3", v_address: "Address3")
v4 = Venue.create!(v_name: "Venue4", v_description: "Description4", v_address: "Address4")
v5 = Venue.create!(v_name: "Venue5", v_description: "Description5", v_address: "Address5")
v6 = Venue.create!(v_name: "Venue6", v_description: "Description6", v_address: "Address6")


o1 = Organization.create!(o_name: "Organization1", user_id: u1.id, o_description: "Description1")
o2 = Organization.create!(o_name: "Organization2", user_id: u2.id, o_description: "Description1")
o3 = Organization.create!(o_name: "Organization3", user_id: u3.id, o_description: "Description1")
o4 = Organization.create!(o_name: "Organization4", user_id: u4.id, o_description: "Description1")


e1 = Event.create!(e_name: "Event1", user_id: u1.id, organization_id: nil, e_description: "Description1", venue_id: v1.id, visibility: true)
e2 = Event.create!(e_name: "Event2", user_id: u2.id, organization_id: nil, e_description: "Description2", venue_id: v2.id, visibility: true)
e3 = Event.create!(e_name: "Event3", user_id: nil, organization_id: o1.id, e_description: "Description3", venue_id: v3.id, visibility: true)
e4 = Event.create!(e_name: "Event4", user_id: nil, organization_id: o2.id, e_description: "Description4", venue_id: v4.id, visibility: false)
e5 = Event.create!(e_name: "Event5", user_id: nil,organization_id: o4.id, e_description: "Description5", venue_id: v6.id, visibility: false)
e6 = Event.create!(e_name: "Event6", user_id: u6.id, organization_id: nil, e_description: "Description6", venue_id: v5.id, visibility: false)


vote1 = Vote.create!(event_id: e1.id, date: "01/01/2021", n_votes: 0)
vote2 = Vote.create!(event_id: e2.id, date: "01/01/2021", n_votes: 0)
vote3 = Vote.create!(event_id: e3.id, date: "01/01/2021", n_votes: 0)
vote4 = Vote.create!(event_id: e4.id, date: "01/01/2021", n_votes: 0)
vote5 = Vote.create!(event_id: e1.id, date: "01/01/2021", n_votes: 0)
vote6 = Vote.create!(event_id: e5.id, date: "02/01/2021", n_votes: 0)
vote7 = Vote.create!(event_id: e6.id, date: "03/01/2021", n_votes: 0)


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


comment1= Comment.create!(user_id: u1.id, text: "txt1", event_id:e1.id)
comment2= Comment.create!(user_id: u2.id, text: "txt2", event_id:e2.id)
comment3= Comment.create!(user_id: u1.id, text: "txt3", event_id:e2.id)
comment4= Comment.create!(user_id: u3.id, text: "txt4", event_id:e3.id)

inbox1= Inbox.create!(user_id: u1.id)
inbox2= Inbox.create!(user_id: u2.id)
inbox3= Inbox.create!(user_id: u3.id)
inbox4= Inbox.create!(user_id: u4.id)
inbox5= Inbox.create!(user_id: u5.id)
inbox6= Inbox.create!(user_id: u6.id)
inbox7= Inbox.create!(user_id: u7.id)
inbox8= Inbox.create!(user_id: u8.id)
inbox9= Inbox.create!(user_id: u9.id)

chat1= Chat.create!(inbox1_id: inbox1.id, inbox2_id: inbox2.id)

msg1= Message.create!(user_id: u1.id, text:"Hola, como estay?", chat_id:chat1.id)
msg2= Message.create!(user_id: u2.id, text:"Hola. Bien gracias, y tu?", chat_id:chat1.id)

i1= Invite.create!(user_id: u1.id, event_id: e4.id)
i2= Invite.create!(user_id: u1.id, event_id: e5.id)
i3= Invite.create!(user_id: u1.id, event_id: e6.id)
i4= Invite.create!(user_id: u2.id, event_id: e5.id)
i5= Invite.create!(user_id: u2.id, event_id: e4.id)
i6= Invite.create!(user_id: u2.id, event_id: e6.id)