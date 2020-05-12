class PagesController < ApplicationController
  def home
    @p_events = Event.joins(:comments).distinct
    @p_comments = Comment.all
    @p_organizations = Organization.all
  end
end
