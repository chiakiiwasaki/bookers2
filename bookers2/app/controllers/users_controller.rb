class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to user_path(current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def book_params
    params.permit(:title, :body)
  end

end
