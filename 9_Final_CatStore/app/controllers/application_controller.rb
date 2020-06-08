class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)

    if current_user.is_admin == true
      admin_items_path
    else 
      root_path(resource)
    end
      
  end

end
