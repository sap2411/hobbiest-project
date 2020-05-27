class UsersController < ApplicationController
    before_action :require_login
    def show
        @user = User.find_by(username: session[:username])
    end
end
