class PagesController < ApplicationController
  def home
    @p_events = Event.all
  end
end
