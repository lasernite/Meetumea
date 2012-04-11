class StaticPagesController < ApplicationController
  before_filter :location
  
  def location
    @city = request.location.city
    @state = request.location.state
  end
  
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
