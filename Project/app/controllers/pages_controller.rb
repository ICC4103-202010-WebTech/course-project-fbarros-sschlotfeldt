class PagesController < ApplicationController
  def home
    @p_events = Event.joins(:comments)
  end
end
