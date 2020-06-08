class CitiesController < ApplicationController
  
  def show
    @current_city = City.find(params[:id])
    @url = "/images/"+@current_city.name.delete(' ')+".jpg"
  end

end
