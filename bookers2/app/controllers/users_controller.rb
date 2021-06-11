class UsersController < ApplicationController

  def index
    @new_book = Book.new
    @users = User.all
    @user = current_user
  end



  def show
    #@user = current_user
    @user = User.find(params[:id])
    @new_book = Book.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def edit
#    @user = current_user
     @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :caption)
  end

end
