class BooksController < ApplicationController
  def index
    # to filter using tags:
    # @books = Book.where('classics' = ANY (tags))
    @city = params[:search]
    @books = Book.search(@city)
  end

  def show
    @book = Book.find(params[:id])
  end
end
