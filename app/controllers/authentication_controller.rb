class AuthenticationController < ApplicationController
  def signin
    email = params["email"]
    password = params["password"]
    user = User.find_by_email(email)
    if user
      if user.password == password
        session[:user_id] = user.id
        return redirect_to'/'
      else
        return redirect_to '/signin'
      end  
    else
      redirect_to '/signup'
    end 
  end

  def signup
    email = params["email"]
    password = params["password"]
    user = User.find_by_email(email)
    if user
      redirect_to '/signup'
    else
      user = User.create(email: email,password: password)
      session[:user_id] = user.id
      redirect_to '/'
    end 
  end

  def signin_get
  end

  def signup_get
  end

  def logout
    session[:user_id] = nil
    redirect_to'/'
  end
end
