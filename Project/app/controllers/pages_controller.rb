class PagesController < ApplicationController
  def home
    @p_events = Event.limit(1)
  end
end
