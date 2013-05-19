class WelcomeController < ApplicationController
  def index
    @city = request.location.city
    @books = Book.where(:city => @city).page(4).per(10)
  end

end
