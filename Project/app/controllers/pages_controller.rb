class PagesController < ApplicationController
  def home
    @p_events = Event.joins(:comments).distinct
    @comments = Comment.includes(:attachments, :event, :user)
  end
end
