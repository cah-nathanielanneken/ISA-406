class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  #before_filter CASClient::Frameworks::Rails::Filter
  #after_filter
  protect_from_forgery with: :exception
  include SessionsHelper, RoomsHelper
end
