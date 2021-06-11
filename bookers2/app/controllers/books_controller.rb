class BooksController < ApplicationController

  def index
    @new_book = Book.new
    @books = Book.all
    @user = current_user
  end

  def create
    @new_book = Book.new(book_params)
    @new_book.user_id = current_user.id
    @new_book.save
    redirect_to book_path(@new_book.id)
  end

  def show
    @book = Book.find(params[:id])
    @new_book = Book.new
    @user = current_user
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
