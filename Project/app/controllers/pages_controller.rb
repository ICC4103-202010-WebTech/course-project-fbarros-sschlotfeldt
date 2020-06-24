class PagesController < ApplicationController
  def home
    begin
      if current_user.admin == true
        @p_events = Event.all
      else
        @p_events = Event.where(visibility:true)
      end
    rescue
      @p_events = Event.where(visibility:true)
    end
    @p_comments = Comment.all
    @p_organizations = Organization.all
    @p_users = User.all
  end
end
