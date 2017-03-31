class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :user_signed_in? ,:current_user

  def user_signed_in?
  	!session[:user_id].nil?  # false if not there
  end
  	
  def current_user
  	if user_signed_in?
  		User.find(session[:user_id])
  	end		
  end

  def authenticate_user
  	unless user_signed_in?   
  		redirect_to '/signin'  #false
  	end	
  end	
end
