class UsersController < ApplicationController

  before_filter :authenticate_user, only: [:edit, :update]

  def new
    @user = RegularUser.new
  end

  def edit
    @user = RegularUser.find(current_user.id)
  end

  def update
    @user = RegularUser.find(current_user.id)
    if @user.update_attributes(params[:regular_user])
      redirect_to root_path
    else
      render action: 'edit'
    end
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
