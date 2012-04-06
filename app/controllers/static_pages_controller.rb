class StaticPagesController < ApplicationController
  def home
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
    @user = User.find_by_remember_token(cookies[:remember_token])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
end
