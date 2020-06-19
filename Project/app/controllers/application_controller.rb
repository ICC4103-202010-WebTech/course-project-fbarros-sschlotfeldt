class ApplicationController < ActionController::Base

  before_action :get_current_session

  def get_current_session
    $current_user = User.joins(:events).where(id:1)
  end

end
