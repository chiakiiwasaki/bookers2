class UsersController < ApplicationController

  def edit
  end

  def index
    #@user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  end

  def destroy
  end
end
