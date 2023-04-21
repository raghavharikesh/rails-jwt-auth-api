class UsersController < ApplicationController
   before_action :set_user  ,only: [:edit,:update,:show,:destroy]

  def new   
    @user = User.new
  end

  def index
    @user = User.all
  end

  def show
   
  end

  def create
       @user = User.new(user_params)
      if @user.save
       redirect_to teachers_path, notice: "user has been created succesfully"
       else
         render 'new'
      end
  end
  def edit
  end
  def update
  	if @user.update(user_params)
  	   redirect_to users_path, notice: "user has been updated succesfully"
    else
      render 'edit'	
    end	
  end
  def destroy
   	    @user.destroy
	    redirect_to users_path , notice: "user has been deleted succesfully"
  end
  private
	def user_params
		params.require(:user).permit(:username,:email,:password)
    end
    def set_user
    	@user = User.find(params[:id])
    end
end

