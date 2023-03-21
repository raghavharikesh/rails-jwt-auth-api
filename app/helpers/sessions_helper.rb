module SessionsHelper
    
    def log_in(user)
      session[:user_id] = user.id
    end
# Returns the current logged-in user (if any).


    # def current_user
    #    if session[:user_id]
    #      @current_user=@current_user || user.find_by(id: session[:user_id])
    #    end
    # end
end
