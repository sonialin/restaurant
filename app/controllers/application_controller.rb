class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize

  protected

  def authorize
  	unless User.find_by_id(session[:user_id]) or User.count.zero?
    redirect_to login_url, :notice => "Please log in" 
  	end
  	if User.count.zero?
    	redirect_to new_user_path, :notice => "Please create a user" 
  	end
  end
end
