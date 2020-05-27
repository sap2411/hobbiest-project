class SessionsController < ApplicationController
    skip_before_action :fetch_user, only: [:new, :create]
    def new
        render :layout => false
    end

    # def create
    #     if params[:username] != '' && params[:username] != nil
    #         session[:username] = params[:username]
    #         User.find_or_create_by(username: params[:username])
    #         redirect_to '/'
    #     else 
    #         redirect_to '/login'
    #     end
    # end

    def create
      @user = User.find_by(username: params[:username])
      if !@user || !@user.authenticate(params[:password])
            flash[:errors] = "We dont have records of that username or password."
            redirect_to login_path
        else
            logged_in(@user.id)
            redirect_to '/'
        end
    end

    def destroy
        log_out_user!
        redirect_to '/login'
    end
end