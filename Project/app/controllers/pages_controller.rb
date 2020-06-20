class PagesController < ApplicationController
  def home
    @p_events = Event.all
    @p_comments = Comment.all
    @p_organizations = Organization.all
    @p_users = User.all
  end
end
