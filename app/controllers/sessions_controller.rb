class SessionsController < ApplicationController
  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
       session[:user_id] = user.id
        redirect_to teachers_path ,notice: "You have successfully logged in."
  	end
  end

  def destroy
  session.delete(:user_id)
  @current_user = nil
  redirect_to root_url  ,notice: "You have successfully logged out."
  end
end


