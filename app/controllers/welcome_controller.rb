class WelcomeController < ApplicationController
  def index
    city = request.location.city
    if @city.nil?
      @city = City.first
    else
      @city = City.find(:name => city)
    end
    @books = Book.where(:city_id => @city.id).limit(15)
    @authors = @city.authors.limit(5)
  end


  def show
    @books = Book.search(params[:search])
  end
end
