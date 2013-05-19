class WelcomeController < ApplicationController
  def index
    @city = request.location.city
    @books = Books.where(:city => @city).limit(5)
  end

end
