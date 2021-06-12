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
    @user = @book.user
  end

  def destroy
    #Book.find_by(id: params[:id]).destroy
    #redirect_to books_path
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end



  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
