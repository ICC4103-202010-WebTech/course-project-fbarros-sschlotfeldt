class PagesController < ApplicationController
  def home
    @p_events = Event.includes(:comments)
  end
end
