class WelcomeController < ApplicationController
  def index
    @city = City.first
    @books = Book.where(:city_id => @city.id).limit(15)
    @authors = @city.authors.limit(5)
  end

end
