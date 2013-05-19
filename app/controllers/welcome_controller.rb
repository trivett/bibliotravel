class WelcomeController < ApplicationController
  def index
    @city = request.location.city
  end

end
