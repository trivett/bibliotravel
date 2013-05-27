class BooksController < ApplicationController
  def index
    @books = Book.search(params[:search])
  end

  def show
    # @books = Book.city.search(params[:search])
  end

  def search
  end
end
