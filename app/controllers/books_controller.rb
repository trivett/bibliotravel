class BooksController < ApplicationController
  def index
    @city = params[:search]
    @books = Book.search(@city)
  end

  def show
    # @books = Book.city.search(params[:search])
  end

  def search
  end
end
