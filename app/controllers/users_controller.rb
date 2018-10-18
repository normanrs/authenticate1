class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:student])
    if @user.save
      redirect_to new_user_path
    end
  end

end
