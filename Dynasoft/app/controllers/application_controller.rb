class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  #before_filter CASClient::Frameworks::Rails::Filter
  #after_filter checkinUser
  protect_from_forgery with: :exception
  include RoomsHelper


  def is_admin
    !((temp_user = User.where(name: session[:cas_user])).blank?) && temp_user.admin
  end

  private

    def checkinUser
      if (User.where(name: session[:cas_user])).blank?
        temp_user = User.new(name: session[:cas_user])
        temp_user.save
      end
    end

end
