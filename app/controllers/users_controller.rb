class UsersController < ApplicationController
    skip_before_action :fetch_user, only: [:new, :create]
    def show
        @user = User.find_by(username: session[:username])
        @created_hobbies = Hobby.user_created(@user)
    end

    def new
        render :layout => false
    end

    def create
        user = User.create(user_params)
        if user.valid?
            redirect_to '/'
        else
            flash[:errors] = "That submission was invalid."
            redirect_to new_user_path
        end
    end
     
    private
     
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
