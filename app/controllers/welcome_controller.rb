class WelcomeController < ApplicationController
  def index
    @city = request.location.city
    @books = Book.where(:city => @city).limit(5)
  end

end
