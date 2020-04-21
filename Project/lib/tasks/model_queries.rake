namespace :db do
  task :queries_demo=> :environment do

    Event.where(user_id:ID).select("title").map {|x| x.title}
    OrganizationM.joins(:user).where(organization_id:ID).select("user_id").map {|x| x.user_id}
    Organization.joins(:event).where(id:ID, events:{visibility: "true"}).select("event_id").map {|x| x.event_id}
    Organization.joins(:event).where(id:ID, events:{visibility: "false"}).select("event_id").map {|x| x.event_id}
    EventM.where(event_id:ID).select("user_id").map {|x| x.user_id}
    Vote.where(event_id:ID).select("user_id").map {|x| x.user_id}
    Comment.where("id=ID and user_id=ID").select("text").map {|x| x.text}
    Comment.where(user_id:ID).select("text").map {|x| x.text}
    Organization.select("user_id").map{|x| x.user_id}
    User.where(adm:true).select("userName").map{|x| x.userName}

    end
end