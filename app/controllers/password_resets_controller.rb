class PasswordResetsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	 if @user.present?
  	 	PasswordMailer.with(user:@user).reset.deliver_now
  	 end
    redirect_to root_path, notice:"sent a link in your email to reset password "
   end   
   
   def edit
   	@user=User.find_signed!(params[:token],purpose:"password_reset")
   	#binding.irb
   end
    def update
    	@user=User.find_signed!(params[:token],purpose:"password_reset")
    	if @user.update(password_params)
        redirect_to login_path,notice: "your password was reset successfully"
        else
           render :edit
        end
    end       
end

private

def password_params
	 params.require(:user).permit(:password)
end

