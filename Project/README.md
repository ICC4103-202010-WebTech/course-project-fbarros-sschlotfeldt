# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

As you can see in the following queries, there is an ID Character, this is the one that has to be changed in order to get the requested tables in the data base.

Project1.2 Querys:
1. Event.where(user_id:ID).select("title").map {|x| x.title}
2. OrganizationM.joins(:user).where(organization_id:ID).select("user_id").map {|x| x.user_id}
3. Organization.joins(:event).where(id:ID, events:{visibility: "true"}).select("event_id").map {|x| x.event_id}
4. Organization.joins(:event).where(id:ID, events:{visibility: "false"}).select("event_id").map {|x| x.event_id}
5. EventM.where(event_id:ID).select("user_id").map {|x| x.user_id}
6. Vote.where(event_id:ID).select("user_id").map {|x| x.user_id}
7. Comment.where("id=ID and user_id=ID").select("text").map {|x| x.text}
8. Comment.where(user_id:ID).select("text").map {|x| x.text}
9. Organization.select("user_id").map{|x| x.user_id}
10. User.where(adm:true).select("userName").map{|x| x.userName}

IMPORTANT:
Some of the requested information will be presented with the id of the corresponding user/event.
