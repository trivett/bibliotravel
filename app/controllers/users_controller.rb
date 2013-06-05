class UsersController < ApplicationController

  before_action :authenticate_user, only: [:edit, :update]

  def new
    @user = RegularUser.new
  end

  def create
    @user = RegularUser.new(params[:regular_user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'User successfully created.'
      redirect_to root_path
    else
      flash.now[:alert] = 'User creation failed, try again'
      render action: 'new'
    end
  end

  def show
    @user = current_user
  end
end
