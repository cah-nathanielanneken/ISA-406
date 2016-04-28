class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter CASClient::Frameworks::Rails::Filter
  before_action :check_in_user
  protect_from_forgery with: :exception
  include RoomsHelper


  def is_admin
    @currentUser.admin?
  end

  def set_logged_user
    if session[:cas_user] != nil
      temp = User.where(name: session[:cas_user])
      while temp.size == 0
        temp = User.where(name: session[:cas_user])
      end
      @currentUser = temp[0]
    end
  end

  def logout
    CASClient::Frameworks::Rails::Filter.logout(self)
  end

  private

    def check_in_user
      if session[:cas_user] != nil
        if (User.where(name: session[:cas_user])).blank?
          #temp_user = User.new(name: session[:cas_user])
          #temp_user.save 
	  redirect_to invalidUser_path 
	else
	  set_logged_user      
        end
      end
    end

end
