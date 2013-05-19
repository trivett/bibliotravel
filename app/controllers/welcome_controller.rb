class WelcomeController < ApplicationController
  def index
    @city = request.location.city
    @books = Book.where(:city => @city).limit(10)
  end

end
