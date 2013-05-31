class WelcomeController < ApplicationController
  def index
    city = request.location.city
    begin
      @city = City.where(:name => city.titleize).first.name
    rescue
      @city = City.first
    end
  end

  def about
  end

  def thanks
  end

end
