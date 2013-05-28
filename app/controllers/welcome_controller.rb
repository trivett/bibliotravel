class WelcomeController < ApplicationController
  def index
    city = request.location.city
    unless @city.nil?
      @city = City.find(:name => city)
    else
      @city = City.first
    end
    # @books = Book.where(:city_id => @city.id).limit(15)
    # @authors = @city.authors.limit(5)
  end


  def show
    @books = Book.search(params[:search])
  end
end
