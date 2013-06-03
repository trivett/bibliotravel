class WelcomeController < ApplicationController
  def index
    @geo_city = request.location.city
    @city = 'Here'
    begin
      @city = City.where(:name => city.titleize).first
    rescue
      @city = City.first
    end
  end

  def about
  end

  def thanks
  end

  def home
    
  end

end
