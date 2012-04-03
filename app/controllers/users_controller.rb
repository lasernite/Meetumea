class UsersController < ApplicationController
  before_filter :logged_in_user, only: [:index, :edit, :update]
  before_filter :correct_user, only: [:edit, :update]
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Meetume, your online community!"
      redirect_to '/profile'
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def info
    @user = User.find_by_remember_token(cookies[:remember_token])
  end
  
  def index
    @users = User.all
  end
  
  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile Updated"
      log_in @user
      redirect_to '/profile/info'
    else
      render 'edit'
    end
  end
  
      private
      
      def logged_in_user
        unless logged_in?
          store_location
          redirect_to login_path, notice: "Please log in."
      end
      
      def correct_user
        @user = User.find(params[:id])
        redirect_to(root_path) unless current_user?(@user)
      end
end
end
