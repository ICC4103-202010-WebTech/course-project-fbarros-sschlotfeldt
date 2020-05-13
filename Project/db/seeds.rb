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
u3 = User.create!(userName: "Pepito", email: "pepito@gmail.com", password: "123456", adm: false)

v1 = Venue.create!(name: "Venue1", description: "Description1", address: "Address1")
v2 = Venue.create!(name: "Venue2", description: "Description2", address: "Address2")

o0 = Organization.create!(name: "Null", user_id: u0.id)
o1 = Organization.create!(name: "Organization1", user_id: u1.id)
o2 = Organization.create!(name: "Organization2", user_id: u2.id)

e1 = Event.create!(title: "Event1", user_id: u1.id, organization_id: o0.id, description: "Description1", venue_id: v1.id, visibility: true)
e2 = Event.create!(title: "Event2", user_id: u2.id,organization_id: o0.id, description: "Description2", venue_id: v2.id, visibility: false)
e3 = Event.create!(title: "Event3", user_id: u0.id, organization_id: o1.id, description: "Description3", venue_id: v1.id, visibility: true)

vote1 = Vote.create!(user_id: u2.id, event_id: e1.id, date: nil)
vote2 = Vote.create!(user_id: u1.id, event_id: e2.id, date: nil)
vote3 = Vote.create!(user_id: u3.id, event_id: e1.id, date: nil)
vote4 = Vote.create!(user_id: u3.id, event_id: e2.id, date: nil)

em1 = EventM.create!(user_id: u2.id, event_id: e1.id)
em2 = EventM.create!(user_id: u3.id, event_id: e1.id)
em3 = EventM.create!(user_id: u1.id, event_id: e2.id)
em4 = EventM.create!(user_id: u3.id, event_id: e2.id)

om1= OrganizationM.create!(user_id: u2.id, organization_id: o1.id)
om2= OrganizationM.create!(user_id: u3.id, organization_id: o1.id)
om3= OrganizationM.create!(user_id: u1.id, organization_id: o2.id)
om4= OrganizationM.create!(user_id: u3.id, organization_id: o2.id)

pp1= ProfilePage.create!(user_id: u1.id, name: "Francisco", lastName: "Barros", bio: "bio1", address: "Address1")
pp2= ProfilePage.create!(user_id: u2.id, name: "Sebastian", lastName: "Schlotfeldt", bio: "bio2", address: "Address2")
pp1= ProfilePage.create!(user_id: u3.id, name: "Pepe", lastName: "Lagos", bio: "bio3", address: "Address3")

ohp= OrgHomepage.create!(name: "Organization1", banner:"Logo1", description: "Description1", organization_id: o1.id)
ohp= OrgHomepage.create!(name: "Organization2", banner:"Logo2", description: "Description2", organization_id: o2.id)

comment1= Comment.create!(user_id: u1.id, text: "txt1", event_id:e1.id)
comment2= Comment.create!(user_id: u2.id, text: "txt2", event_id:e2.id)
comment3= Comment.create!(user_id: u1.id, text: "txt3", event_id:e2.id)
comment4= Comment.create!(user_id: u3.id, text: "txt4", event_id:e3.id)

att1= Attachment.create!(attachment: "Img1", comment_id: comment1.id)
att1= Attachment.create!(attachment: "Img2", comment_id: comment2.id)
att1= Attachment.create!(attachment: "Img3", comment_id: comment3.id)

chat1= Chat.create!(user_id: u1.id)
chat2= Chat.create!(user_id: u2.id)
chat3= Chat.create!(user_id: u3.id)

msg1= Message.create!(user_id: u1.id, text:"Hola, como estay?", chat_id:chat1.id)
msg2= Message.create!(user_id: u2.id, text:"Hola. Bien gracias, y tu?", chat_id:chat1.id)


