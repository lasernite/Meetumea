class MicropostsController < ApplicationController
    before_filter :logged_in_user
    
    def create
      @micropost = current_user.microposts.build(params[:micropost])
      if @micropost.save
        flash[:success] = "Micropost created!"
        redirect_to profile_path
      else
        @micropost = current_user.microposts.build if logged_in?
        @user = User.find_by_remember_token(cookies[:remember_token])
        @microposts = @user.microposts.paginate(page: params[:page])
        render '/static_pages/profile'
      end
    end
  
    
    def destroy
    end
    
  end
  