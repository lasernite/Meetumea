class StaticPagesController < ApplicationController
  
  def home
    @micropost = current_user.microposts.build if logged_in?
    @user = User.find_by_remember_token(cookies[:remember_token])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
  def posts
  end
  
  def meetups
  end
  
  def chat
  end
  
  def groups
  end
  
  def web
  end
  
  def profile
    @micropost = current_user.microposts.build if logged_in?
    @user = User.find_by_remember_token(cookies[:remember_token])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
end
