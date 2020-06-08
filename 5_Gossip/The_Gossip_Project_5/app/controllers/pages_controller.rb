class PagesController < ApplicationController
  def contact
    @user = User.new
  end

  def team
    @user = User.new
    @current_user = User.find_by(last_name:"Anceau",email:"jul33anc@gmail.com")
  end
  
end
