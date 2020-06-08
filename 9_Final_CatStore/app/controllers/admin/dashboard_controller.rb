class Admin::DashboardController < ApplicationController
  before_action :authorized?

  def authorized?
      if current_user.is_admin == true
        return true
      else
        redirect_to root_path
      end
  end

end
