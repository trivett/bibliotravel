class WelcomeController < ApplicationController
  def index
    city = request.location.city
    @city = City.where(:name => city.titleize).first
    if @city.nil?
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
