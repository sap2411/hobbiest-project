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

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        old_name = @user.username
        @user.update(user_params)
        if @user.valid?
            new_name = @user.username
            Hobby.update_creater(old_name, new_name)
            redirect_to '/logout'
            flash[:errors] = "Please Log In with your new Username"
        else
            flash[:errors] = "That submission was invalid."
            redirect_to edit_user_path(@user)
        end
    end
     
    private
     
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
