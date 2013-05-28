class BooksController < ApplicationController
  def index
    @city = params[:search]
    @books = Book.search(@city)
  end

  def show
    @book = Book.find(params[:id])
  end
end
