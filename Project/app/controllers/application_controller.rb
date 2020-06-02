class ApplicationController < ActionController::Base

  before_filter :get_current_session

  def get_current_session
    @current_user = User.where(id:2)
  end

end
