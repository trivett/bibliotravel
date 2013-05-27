class BooksController < ApplicationController
  def index
    @search = Books.search(params[:q])
    @books = @search.result
  end

  def show
    # @books = Book.city.search(params[:search])
  end

  def search
  end
end
